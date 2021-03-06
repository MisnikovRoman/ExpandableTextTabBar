import SwiftUI

/// Tab bar view with expanding text
public struct ExpandableTextTabView<TabView: View>: View {
    
    private let tabBarViewHorizontalPadding: CGFloat = 16
    
    @State var selection: Int = 0
    let tabs: [Tab<TabView>]
    
    /// Creates tab bar view
    /// - Parameter tabs: tab models
    public init(tabs: [Tab<TabView>]) {
        self.tabs = tabs
    }
    
    public var body: some View {
        ZStack {
            tabs[selection].view
            VStack {
                Spacer()
                TabBarView(items: tabs.map(\.item), selection: $selection)
                    .padding(.horizontal, tabBarViewHorizontalPadding)
            }
        }
    }
}

struct ExpandableTextTabView_Previews: PreviewProvider {
    static let items = [
        Tab(image: Image(systemName: "house"),
            name: "Home",
            color: .purple) { Text("Home").font(.largeTitle).bold() },
        Tab(image: Image(systemName: "heart"),
            name: "Likes",
            color: .pink) { Text("Likes").font(.largeTitle).bold() },
        Tab(image: Image(systemName: "magnifyingglass"),
            name: "Search",
            color: .orange) { Text("Search").font(.largeTitle).bold() },
        Tab(image: Image(systemName: "person"),
            name: "Profile",
            color: .blueGreenCraiola) { Text("Profile").font(.largeTitle).bold() }
    ]
    
    static var previews: some View {
        Group {
            ExpandableTextTabView(tabs: items)
                .environment(\.colorScheme, .light)
            ExpandableTextTabView(tabs: items)
                .environment(\.colorScheme, .dark)
                .background(Color.black)
        }
    }
}

extension Color {
    static var blueGreenCraiola: Color {
        Color(red: 9.0 / 255.0, green: 142.0 / 255.0, blue: 172.0 / 255.0)
    }
}
