import Combine
import FioriSwiftUICore
import SwiftUI

class WelcomeScreenDataModel: _WelcomeScreenModel, ObservableObject {
    // Changes in nested observable object will not trigger refresh. Need to send notification by explicitly calling `send()`
    @Published var textInput: _TextInputModel?
    lazy var action: _ActionModel? = ActionDataModel { [unowned self] in
        print("Primary button clicked: \(self.textInput!.textInputValue)")
    }

    lazy var secondaryAction: _ActionModel? = SecondaryActionDataModel { [unowned self] in
        UIApplication.shared.open(URL(string: "http://www.google.com")!)
    }

    var title: String = "SAP Project Companion for Managers"
    var descriptionText: String? = "Please follow the instructions you received in the welcome email to start the activation process."
    var subtitle: String? = "abc@def.com"
    var footnote: String? = "Want to explore?"
    var icon: Image? = Image("SAPLogo")
    
    var cancellable: AnyCancellable?
    
    init() {
        let inputModel = TextInputDataModel()
        
        self.cancellable = inputModel.objectWillChange.sink { [weak self] in
            self?.objectWillChange.send()
        }
        
        self._textInput = Published(wrappedValue: inputModel)
    }
}

extension WelcomeScreenDataModel {
    class TextInputDataModel: _TextInputModel, ObservableObject {
        @Published var textInputValue: String = ""
        
        var onCommit: (() -> Void)? = {
            print("TextInputField commit")
        }
    }
    
    struct ActionDataModel: _ActionModel {
        let actionText: String? = "Start"
        
        let didSelectAction: (() -> Void)?
    }
    
    struct SecondaryActionDataModel: _ActionModel {
        let actionText: String? = "Try the Demo"
        
        let didSelectAction: (() -> Void)?
    }
}

struct WelcomeScreenSample: View {
    var _isNewObjectItem: Bool = false
    @StateObject var model = WelcomeScreenDataModel()

    public init() {}
    public init(_isNewObjectItem: Bool) {
        self._isNewObjectItem = _isNewObjectItem
    }
    
    var body: some View {
        VStack {
            if self._isNewObjectItem {
                WelcomeScreen(title: {
                    Text(self.model.title)
                }, description: {
                    if let descriptionText = self.model.descriptionText {
                        Text(descriptionText)
                    } else {
                        EmptyView()
                    }
                }, icon: {
                    (self.model.icon != nil) ? self.model.icon!.typeErased : EmptyView().typeErased
                }, footnote: {
                    if let footnote = self.model.footnote {
                        Text(footnote)
                    } else {
                        EmptyView()
                    }
                }, action: {
                    if let action = self.model.action {
                        _Action(model: action)
                    } else {
                        EmptyView()
                    }
                }, secondaryAction: {
                    if let secondaryAction = self.model.secondaryAction {
                        _Action(model: secondaryAction)
                    } else {
                        EmptyView()
                    }
                }, inputText: Binding<String>(get: { self.model.textInput != nil ? self.model.textInput!.textInputValue : "" }, set: { self.model.textInput?.textInputValue = $0 }))
            } else {
                _WelcomeScreen(model: self.model)
            }
        }
    }
}

struct WelcomeScreenCustomized: View {
    @ObservedObject var model = WelcomeScreenDataModel()
    public init() {}
    
    var body: some View {
        VStack {
            _WelcomeScreen(model: self.model)
                .footnoteModifier { $0.font(.fiori(forTextStyle: .headline)).foregroundColor(.green) }
                .actionTextModifier { $0.background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing)) }
        }
    }
}

struct WelcomeScreenDiscoveryService: View {
    @ObservedObject var model = WelcomeScreenDataModel()
    public init() {}
    
    var body: some View {
        VStack {
            _WelcomeScreen(model: self.model)
                .footnoteModifier { $0.font(.fiori(forTextStyle: .headline)).foregroundColor(.green) }
                .actionTextModifier { content in
                    content.background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
                        .disabled(self.model.textInput?.textInputValue.isEmpty ?? true)
                }
                .textInputModifier { $0.disableAutocorrection(true) }
        }
    }
}

struct WelcomeScreenSample_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenSample()
    }
}
