// Generated using Sourcery 2.1.7 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
import Foundation
import SwiftUI

public struct WelcomeScreen {
    let title: any View
    let subtitle: any View
    let description: any View
    let icon: any View
    let footnote: any View
    let action: any View
    let secondaryAction: any View
    let textInput: any View

    @Environment(\.welcomeScreenStyle) var style

    fileprivate var _shouldApplyDefaultStyle = true

    public init(@ViewBuilder title: () -> any View,
                @ViewBuilder subtitle: () -> any View = { EmptyView() },
                @ViewBuilder description: () -> any View = { EmptyView() },
                @ViewBuilder icon: () -> any View = { EmptyView() },
                @ViewBuilder footnote: () -> any View = { EmptyView() },
                @ViewBuilder action: () -> any View = { EmptyView() },
                @ViewBuilder secondaryAction: () -> any View = { EmptyView() },
                @ViewBuilder textInput: () -> any View = { EmptyView() })
    {
        self.title = Title(title: title)
        self.subtitle = Subtitle(subtitle: subtitle)
        self.description = Description(description: description)
        self.icon = Icon(icon: icon)
        self.footnote = Footnote(footnote: footnote)
        self.action = Action(action: action)
        self.secondaryAction = SecondaryAction(secondaryAction: secondaryAction)
        self.textInput = textInput()
    }
}

public extension WelcomeScreen {
    init(title: AttributedString,
         subtitle: AttributedString? = nil,
         description: AttributedString? = nil,
         icon: Image? = nil,
         footnote: AttributedString? = nil,
         action: FioriButton? = nil,
         secondaryAction: FioriButton? = nil,
         textInput: TextInput? = nil)
    {
        self.init(title: { Text(title) }, subtitle: { OptionalText(subtitle) }, description: { OptionalText(description) }, icon: { icon }, footnote: { OptionalText(footnote) }, action: { action }, secondaryAction: { secondaryAction }, textInput: { textInput })
    }
}

public extension WelcomeScreen {
    init(_ configuration: WelcomeScreenConfiguration) {
        self.init(configuration, shouldApplyDefaultStyle: false)
    }

    internal init(_ configuration: WelcomeScreenConfiguration, shouldApplyDefaultStyle: Bool) {
        self.title = configuration.title
        self.subtitle = configuration.subtitle
        self.description = configuration.description
        self.icon = configuration.icon
        self.footnote = configuration.footnote
        self.action = configuration.action
        self.secondaryAction = configuration.secondaryAction
        self.textInput = configuration.textInput
        self._shouldApplyDefaultStyle = shouldApplyDefaultStyle
    }
}

extension WelcomeScreen: View {
    public var body: some View {
        if self._shouldApplyDefaultStyle {
            self.defaultStyle()
        } else {
            self.style.resolve(configuration: .init(title: .init(self.title), subtitle: .init(self.subtitle), description: .init(self.description), icon: .init(self.icon), footnote: .init(self.footnote), action: .init(self.action), secondaryAction: .init(self.secondaryAction), textInput: .init(self.textInput))).typeErased
                .transformEnvironment(\.welcomeScreenStyleStack) { stack in
                    if !stack.isEmpty {
                        stack.removeLast()
                    }
                }
        }
    }
}

private extension WelcomeScreen {
    func shouldApplyDefaultStyle(_ bool: Bool) -> some View {
        var s = self
        s._shouldApplyDefaultStyle = bool
        return s
    }

    func defaultStyle() -> some View {
        WelcomeScreen(.init(title: .init(self.title), subtitle: .init(self.subtitle), description: .init(self.description), icon: .init(self.icon), footnote: .init(self.footnote), action: .init(self.action), secondaryAction: .init(self.secondaryAction), textInput: .init(self.textInput)))
            .shouldApplyDefaultStyle(false)
            .welcomeScreenStyle(WelcomeScreenFioriStyle.ContentFioriStyle())
            .typeErased
    }
}
