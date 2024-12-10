import SwiftUI

struct ActionItemsStack {
    let actionItemsView: [any View]
    
    init(actionItemsView: [any View]) {
        self.actionItemsView = actionItemsView
    }
    
    public var count: Int {
        self.actionItemsView.count
    }
    
    public func view(at index: Int) -> some View {
        self.actionItemsView[index].typeErased
    }
    
    var body: some View {
        EmptyView()
//        AvatarListView(avatars: self)
    }
}
