import SwiftUI

/// Tab bar element model
public struct TabItem: Equatable {
    let image: Image
    let name: String
    let color: Color
    
    /// Create tab bar element model
    /// - Parameters:
    ///   - image: tab item image
    ///   - name: tab item text
    ///   - color: selection color
    public init(image: Image, name: String, color: Color = .accentColor) {
        self.image = image
        self.name = name
        self.color = color
    }
}

