import FioriSwiftUICore
import FioriThemeManager
import SwiftUI

enum OnBoardingWelcomeScreenItemType {
    case link
    case customLogo
    case mdm
    case discoveryService
    case scan
    case activation
    case longLongTexts
    case longLongTextsWithMDM
    case longTexts
    case longTextsWithMDM
    case linkAndDemoNotAvailable
    case mdmAndDemoNotAvailable
}

struct OnBoardingWelcomeScreenExamples: View {
    @State private var hidesLogoAtBottomWithHeadlineImage = true
    @State private var hidesTitleWithHeadlineImage = true
    @State private var usesCameraOnlyOnScan = false
    @State private var customScanCancel = false
    @State private var showLegalAgreement = false
    @State private var showTermsOfService = false
    @State private var showIllustrationMessage = false
    
    private var headerImageOptions: [AttributedString] = ["None", "SAP", "SF Square", "SF Long"]
    @State private var showHeaderImage = false
    @State private var headerImageSelectIndex = 0
    
    var body: some View {
        List {
            Text("Developer Example with Link").onTapGesture {
                self.showDifferentWelcomeScreen(.link)
            }
            Text("Developer Example with Custom Logo").onTapGesture {
                self.showDifferentWelcomeScreen(.customLogo)
            }
            Text("Developer Example with MDM").onTapGesture {
                self.showDifferentWelcomeScreen(.mdm)
            }
            Text("Developer Example with Discovery Service").onTapGesture {
                self.showDifferentWelcomeScreen(.discoveryService)
            }
            Text("Developer Example with Scan").onTapGesture {
                self.showDifferentWelcomeScreen(.scan)
            }
            Text("Developer Example with Activation").onTapGesture {
                self.showDifferentWelcomeScreen(.activation)
            }
            Text("With Long Long Texts with MDM").onTapGesture {
                self.showDifferentWelcomeScreen(.mdm)
            }
            Text("With Long Long Texts").onTapGesture {
                self.showDifferentWelcomeScreen(.longLongTexts)
            }
            Text("With Long Texts").onTapGesture {
                self.showDifferentWelcomeScreen(.longTexts)
            }
            Text("With Long Texts with MDM").onTapGesture {
                self.showDifferentWelcomeScreen(.longTextsWithMDM)
            }
            Text("With Link and Demo Not Available").onTapGesture {
                self.showDifferentWelcomeScreen(.linkAndDemoNotAvailable)
            }
            Text("With MDM and Demo Not Available").onTapGesture {
                self.showDifferentWelcomeScreen(.mdmAndDemoNotAvailable)
            }
            
            ValuePicker(title: "Header Image", isRequired: false, options: self.headerImageOptions, selectedIndex: self.$headerImageSelectIndex, isTrackingLiveChanges: true, alwaysShowPicker: false, controlState: .normal)
            
            Toggle(isOn: self.$hidesLogoAtBottomWithHeadlineImage) {
                Text("Hides Logo at Bottom with Headline Image")
            }
            .tint(Color.preferredColor(.tintColor))
            
            Toggle(isOn: self.$hidesTitleWithHeadlineImage) {
                Text("Hides Title with Headline Image")
            }
            .tint(Color.preferredColor(.tintColor))
            
            Toggle(isOn: self.$usesCameraOnlyOnScan) {
                Text("Uses Camera Only on Scan")
            }
            .tint(Color.preferredColor(.tintColor))
            
            Toggle(isOn: self.$customScanCancel) {
                Text("Custom scan cancel")
            }
            .tint(Color.preferredColor(.tintColor))
            
            Toggle(isOn: self.$showLegalAgreement) {
                Text("Show Legal Agreement")
            }
            .tint(Color.preferredColor(.tintColor))
            
            Toggle(isOn: self.$showTermsOfService) {
                Text("Show Terms of Service")
            }
            .tint(Color.preferredColor(.tintColor))
            
            Toggle(isOn: self.$showIllustrationMessage) {
                Text("Show Illustration Message")
            }
            .tint(Color.preferredColor(.tintColor))
        }
    }
    
    func showDifferentWelcomeScreen(_ type: OnBoardingWelcomeScreenItemType) {}
}

#Preview {
    OnBoardingWelcomeScreenExamples()
}
