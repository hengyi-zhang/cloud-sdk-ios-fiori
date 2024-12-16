import FioriSwiftUICore
import SwiftUI

struct ActivityItemsExample: View {
    var body: some View {
        List {
            Section {
                ActivityItems(actionItems: [.init(type: .phone)]) { dataType in
                    print("\(dataType)")
                }
                ActivityItems(actionItems: [.init(type: .email), .init(type: .phone)]) { dataType in
                    print("\(dataType)")
                }
                ActivityItems(actionItems: [.init(type: .message), .init(type: .email), .init(type: .phone)]) { dataType in
                    print("\(dataType)")
                }
                ActivityItems(actionItems: [.init(type: .videoCall), .init(type: .message), .init(type: .email), .init(type: .phone)]) { dataType in
                    print("\(dataType)")
                }
                ActivityItems(actionItems: [.init(type: .detail), .init(type: .videoCall), .init(type: .message), .init(type: .email), .init(type: .phone)]) { dataType in
                    print("\(dataType)")
                }
            } header: {
                Text("Usual Type")
                    .textCase(.none)
            }
            
            Section {
                ActivityItems(actionItems: [
                    .init(type: .custom(Image(systemName: "person"))),
                    .init(type: .custom(Image(systemName: "heart"))),
                    .init(type: .custom(Image(systemName: "clock"))),
                    .init(type: .custom(Image(systemName: "info.circle"))),
                    .init(type: .custom(Image(systemName: "book")))
                ]) { dataType in
                    print("\(dataType)")
                }
            } header: {
                Text("Custom Type")
                    .textCase(.none)
            }
        }
    }
}

#Preview {
    ActivityItemsExample()
}
