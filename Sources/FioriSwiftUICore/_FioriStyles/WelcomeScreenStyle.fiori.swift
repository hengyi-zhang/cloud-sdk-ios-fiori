import FioriThemeManager
import Foundation
import SwiftUI

/// Describes different onboarding states in onboarding process flow.
public enum WelcomeScreenState {
    /// Application has not been configured, and does not use `WelcomeScreen` flow to obtain configuration.
    case notConfigured
    /// Application contains the necessary configurations to connect to mobile services, and should prompt user to Start.
    case isConfigured
}

/// Describes different onboarding configuration options in onboarding process flow.
public enum WelcomeScreenOption {
    /// Application has not been configured, and should prompt the end user for their email address.
    case discoveryService
    /// Application has not been configured, and should prompt the end user to launch the Barcode Scanner to obtain connection settings.
    case barcodeScanner
}

// Base Layout style
public struct WelcomeScreenBaseStyle: WelcomeScreenStyle {
    @State private var isCheckBoxSelected = false
    
    @FocusState var isFocused: Bool
    
//    /// A property to indicate the state in the onboarding process. The default is `.notConfigured`, to indicate the application has not been configured and additionally setting `options` to allow end-users to provide configuration settings during onboarding.  An `.isConfigured` state indicates that the application contains the necessary configurations to connect to mobile services and should prompt the user to Start.
//    /// - See `FUIWelcomeControllerConfigurationOption` for possible configuration options when `state` is `.notConfigured`
//    @State private var state: WelcomeScreenState = .notConfigured
//
//    /// A property to indicate the configuration option(s) in the onboarding process when `state` is `.notConfigured`.  Default sets no configuration options.
//    @State private var options: [WelcomeScreenOption] = [.discoveryService]
    
    public func makeBody(_ configuration: WelcomeScreenConfiguration) -> some View {
        VStack {
            ScrollView {
                VStack(spacing: 40, content: {
                    configuration.headlineImage
                    configuration.title
                })
                .padding(.top, 20)
                .padding(.bottom, 40)
                VStack {
                    if !configuration.showsIllustratedMessage {
                        configuration.description
                            .padding(.bottom, configuration.isLegalAgreementRequired ? 16 : 24)
                    }
                    
                    if configuration.showsIllustratedMessage {
                        configuration.illustratedMessage
                    }
                }
                
                if configuration.isLegalAgreementRequired {
                    HStack(spacing: 10, content: {
                        Button {
                            self.isCheckBoxSelected.toggle()
                        } label: {
                            if self.isCheckBoxSelected {
                                Image(systemName: "checkmark.square.fill")
                                    .renderingMode(.original)
                                    .font(.fiori(forTextStyle: .body, weight: .light))
                                    .foregroundStyle(Color.preferredColor(.tintColor))
                            } else {
                                Image(systemName: "square")
                                    .renderingMode(.original)
                                    .font(.fiori(forTextStyle: .body, weight: .light))
                                    .foregroundStyle(Color.preferredColor(.separator))
                            }
                        }
                        
                        configuration.legalText
                        
                        Spacer()
                    })
                }
                
                if (configuration.state == .notConfigured && configuration.options == [] && configuration.isDemoAvailable)
                    || !(configuration.state == .notConfigured && configuration.options == [])
                {
                    VStack(spacing: 24, content: {
                        if configuration.state == .notConfigured, configuration.options == [.discoveryService] {
                            PlaceholderTextField(text: configuration.$inputText, placeholder: {
                                Text("john.doe@email.com")
                                    .font(.fiori(forTextStyle: .body, isItalic: true))
                                    // .foregroundStyle(Color.preferredColor(.tertiaryLabel))
                                    .tint(.preferredColor(.tertiaryLabel))
                            })
                            .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
                            .font(.fiori(forTextStyle: .body))
                            .foregroundStyle(Color.preferredColor(.primaryLabel))
                            .frame(minHeight: 44)
                            .keyboardType(.emailAddress)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color.preferredColor(self.isFocused ? .tintColor : .separator), style: StrokeStyle(lineWidth: self.isFocused ? 2.0 : 1.0))
                            }
                            .focused(self.$isFocused)
                        }
                        
                        if !(configuration.state == .notConfigured && configuration.options == []) {
                            configuration.action
                                .disabled(self.primaryActionDisabled(configuration))
                        }
                        
                        if configuration.isDemoAvailable {
                            VStack {
                                if configuration.state == .notConfigured, configuration.options == [] {
                                    configuration.footnote
                                }
                                
                                configuration.secondaryAction
                            }
                        }
                    })
                }
                
                Spacer()
            }
            .scrollBounceBehavior(.basedOnSize)
            .scrollIndicators(.hidden)
            
            configuration.icon
                .padding(.bottom, 32)
            
            configuration.footerText
                .padding(.bottom, 8)
        }
        .padding(.leading, 32)
        .padding(.trailing, 32)
    }
    
    func primaryActionDisabled(_ configuration: WelcomeScreenConfiguration) -> Bool {
        var enabled = true
        if configuration.state == .notConfigured, configuration.options == [.discoveryService] {
            enabled = configuration.inputText.count > 0
        }
        if configuration.isLegalAgreementRequired {
            enabled = enabled && self.isCheckBoxSelected
        }
        return !enabled
    }
}

// Default fiori styles
extension WelcomeScreenFioriStyle {
    struct ContentFioriStyle: WelcomeScreenStyle {
        func makeBody(_ configuration: WelcomeScreenConfiguration) -> some View {
            WelcomeScreen(configuration)
        }
    }
    
    struct TitleFioriStyle: TitleStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: TitleConfiguration) -> some View {
            if configuration.isDirectChild(self.welcomeScreenConfiguration.componentIdentifier) {
                Title(configuration)
                    .font(.fiori(forTextStyle: .title1).weight(.bold))
                    .foregroundColor(.preferredColor(.primaryLabel))
                    .multilineTextAlignment(.center)
                    .typeErased
            } else {
                Title(configuration)
                    .typeErased
            }
        }
    }

    struct DescriptionFioriStyle: DescriptionStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: DescriptionConfiguration) -> some View {
            if configuration.isDirectChild(self.welcomeScreenConfiguration.componentIdentifier) {
                Description(configuration)
                    .font(.fiori(forTextStyle: .body))
                    .foregroundColor(.preferredColor(.primaryLabel))
                    .multilineTextAlignment(.center)
                    .typeErased
            } else {
                Description(configuration)
                    .typeErased
            }
        }
    }

    struct IconFioriStyle: IconStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: IconConfiguration) -> some View {
            Icon(configuration)
        }
    }

    struct FootnoteFioriStyle: FootnoteStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: FootnoteConfiguration) -> some View {
            if configuration.isDirectChild(self.welcomeScreenConfiguration.componentIdentifier) {
                Footnote(configuration)
                    .font(.fiori(forTextStyle: .subheadline))
                    .foregroundColor(.preferredColor(.primaryLabel))
                    .typeErased
            } else {
                Footnote(configuration)
                    .typeErased
            }
        }
    }

    struct ActionFioriStyle: ActionStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: ActionConfiguration) -> some View {
            if configuration.isDirectChild(self.welcomeScreenConfiguration.componentIdentifier) {
                Action(configuration)
                    .fioriButtonStyle(FioriPrimaryButtonStyle(.infinity))
                    .frame(minHeight: 44)
                    .typeErased
            } else {
                Action(configuration)
                    .typeErased
            }
        }
    }

    struct SecondaryActionFioriStyle: SecondaryActionStyle {
        let welcomeScreenConfiguration: WelcomeScreenConfiguration

        func makeBody(_ configuration: SecondaryActionConfiguration) -> some View {
            if configuration.isDirectChild(self.welcomeScreenConfiguration.componentIdentifier) {
                SecondaryAction(configuration)
                    .font(.fiori(forTextStyle: .body).weight(.semibold))
                    .foregroundColor(.preferredColor(.tintColor))
                    .fioriButtonStyle(FioriTertiaryButtonStyle(colorStyle: .tint, maxWidth: .infinity))
                    .typeErased
            } else {
                SecondaryAction(configuration)
                    .typeErased
            }
        }
    }
}
