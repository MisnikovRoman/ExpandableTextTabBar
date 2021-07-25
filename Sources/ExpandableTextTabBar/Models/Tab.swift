import SwiftUI


/// Tab model
public struct Tab<T: View> {
    let item: TabItem
    let view: T
    
    /// Creates tab model
    /// - Parameters:
    ///   - item: item model located in tab bar
    ///   - viewBuilder: content of tab
    public init(_ item: TabItem, @ViewBuilder viewBuilder: () -> T) {
        self.item = item
        self.view = viewBuilder()
    }
    
    /// Creates tab model
    /// - Parameters:
    ///   - image: tab item image
    ///   - name: tab item text
    ///   - color: selection color
    ///   - viewBuilder: content of tab
    public init(image: Image, name: String, color: Color = .accentColor, @ViewBuilder viewBuilder: () -> T) {
        self.init(TabItem(image: image, name: name, color: color), viewBuilder: viewBuilder)
    }
}
