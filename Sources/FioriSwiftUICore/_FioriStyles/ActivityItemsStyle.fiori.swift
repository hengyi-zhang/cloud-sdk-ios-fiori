import FioriThemeManager
import Foundation
import SwiftUI

// Base Layout style
public struct ActivityItemsBaseStyle: ActivityItemsStyle {
    public func makeBody(_ configuration: ActivityItemsConfiguration) -> some View {
        // Add default layout here
        HStack(spacing: 0) {
            ForEach(configuration.actionItems ?? [], id: \.id) { element in
                Button {
                    configuration.didSelectActivityItem?(element)
                } label: {
                    element.icon
                        .font(.fiori(forTextStyle: .body).weight(.light))
                        .imageScale(.large)
                        .foregroundColor(.preferredColor(.tintColor))
                        .frame(width: 44, height: 44, alignment: .center)
                }
                .buttonStyle(BorderlessButtonStyle())
            }
        }
        .navigationTitle("ActionItemsExample")
    }
}

// Default fiori styles
extension ActivityItemsFioriStyle {
    struct ContentFioriStyle: ActivityItemsStyle {
        func makeBody(_ configuration: ActivityItemsConfiguration) -> some View {
            ActivityItems(configuration)
            // Add default style for its content
            // .background()
        }
    }

    struct ActionItemsFioriStyle: ActionItemsStyle {
        let activityItemsConfiguration: ActivityItemsConfiguration

        func makeBody(_ configuration: ActionItemsConfiguration) -> some View {
            ActionItems(configuration)
            // Add default style for ActionItems
            // .foregroundStyle(Color.preferredColor(<#fiori color#>))
            // .font(.fiori(forTextStyle: <#fiori font#>))
        }
    }
}
