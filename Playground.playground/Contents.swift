import SwiftUI
import PlaygroundSupport
import ExpandableTextTabBar

struct ContentView: View {
    var body: some View {
        ExpandableTextTabView(tabs: [
            Tab(
                image: Image(systemName: "house"),
                name: "Home",
                color: .purple
            ) {
                Text("Home")
            },
            Tab(
                image: Image(systemName: "heart"),
                name: "Likes",
                color: .pink
            ) {
                Text("Likes")
            },
            Tab(
                image: Image(systemName: "magnifyingglass"),
                name: "Search",
                color: .green
            ) {
                Text("Search")
            },
            Tab(
                image: Image(systemName: "person"),
                name: "Profile",
                color: .purple
            ) {
                Text("Profile")
            }
        ])
    }
}


PlaygroundPage.current.setLiveView(
    ContentView().frame(width: 320, height: 568)
)
