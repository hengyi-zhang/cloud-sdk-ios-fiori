import FioriThemeManager
import Foundation
import SwiftUI

// Base Layout style
public struct WelcomeScreenBaseStyle: WelcomeScreenStyle {
    public func makeBody(_ configuration: WelcomeScreenConfiguration) -> some View {
        VStack {
            configuration.title
                .padding(.top, 80)
                .padding(.bottom, 40)
            configuration.description
                .padding(.bottom, 56)
            
            configuration.textInput
                .padding(.bottom, 30)
            
            configuration.action
                .padding(.bottom, 24)
            
            configuration.subtitle
            configuration.footnote
                .padding(.top, 8)
            
            configuration.secondaryAction
                .padding(.top, 8)
            Spacer()
            configuration.icon
                .padding(.bottom, 60)
        }
        .padding(.leading, 32)
        .padding(.trailing, 32)
    }
}

// Default fiori styles
extension WelcomeScreenFioriStyle {
    struct ContentFioriStyle: WelcomeScreenStyle {
        func makeBody(_ configuration: WelcomeScreenConfiguration) -> some View {
            WelcomeScreen(configuration)
                .textInputStyle { conf in
                    TextInput(conf)
                        .font(.fiori(forTextStyle: .body))
                        .foregroundColor(.preferredColor(.primaryLabel))
                        .multilineTextAlignment(.center)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                }
        }
    }

    struct TitleFioriStyle: TitleStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: TitleConfiguration) -> some View {
            Title(configuration)
                .font(.fiori(forTextStyle: .title1).weight(.bold))
                .foregroundColor(.preferredColor(.primaryLabel))
                .multilineTextAlignment(.center)
        }
    }

    struct SubtitleFioriStyle: SubtitleStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: SubtitleConfiguration) -> some View {
            Subtitle(configuration)
                .font(.fiori(forTextStyle: .body))
                .foregroundColor(.preferredColor(.primaryLabel))
        }
    }

    struct DescriptionFioriStyle: DescriptionStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: DescriptionConfiguration) -> some View {
            Description(configuration)
                .font(.fiori(forTextStyle: .body))
                .foregroundColor(.preferredColor(.primaryLabel))
                .multilineTextAlignment(.center)
        }
    }

    struct IconFioriStyle: IconStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: IconConfiguration) -> some View {
            Icon(configuration)
                .scaleEffect(0.8, anchor: .center)
                .frame(width: 20, height: 20, alignment: .center)
        }
    }

    struct FootnoteFioriStyle: FootnoteStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: FootnoteConfiguration) -> some View {
            Footnote(configuration)
                .font(.fiori(forTextStyle: .subheadline))
                .foregroundColor(.preferredColor(.primaryLabel))
        }
    }

    struct ActionFioriStyle: ActionStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: ActionConfiguration) -> some View {
            Action(configuration)
                .buttonStyle(StatefulButtonStyle())
        }
    }

    struct SecondaryActionFioriStyle: SecondaryActionStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: SecondaryActionConfiguration) -> some View {
            SecondaryAction(configuration)
                .font(.fiori(forTextStyle: .body).weight(.semibold))
                .foregroundColor(.preferredColor(.tintColor))
        }
    }
}
