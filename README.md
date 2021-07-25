# ExpandableTextTabBar

Library with custom implementation of expandable tab bar iOS component.  

Written in pure SwiftUI. 

Inpired by Aurélien Salomon ([Google Bottom Bar Navigation Pattern - Mobile UX Design](https://dribbble.com/shots/5925052-Google-Bottom-Bar-Navigation-Pattern-Mobile-UX-Design?utm_source=Clipboard_Shot&utm_campaign=aureliensalomon&utm_content=Google%20Bottom%20Bar%20Navigation%20Pattern%20-%20Mobile%20UX%20Design&utm_medium=Social_Share&utm_source=Clipboard_Shot&utm_campaign=aureliensalomon&utm_content=Google%20Bottom%20Bar%20Navigation%20Pattern%20-%20Mobile%20UX%20Design&utm_medium=Social_Share))

# Example

![giphy](https://user-images.githubusercontent.com/36447757/126905682-78297832-fc0b-42fe-b3ac-40782f2f5510.gif)

```swift
import ExpandableTextTabBar

struct ContentView: View {
    var body: some View {
        CustomTabView(tabs: [
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
```

# Installation
To add a package dependency to your Xcode project, select File > Swift Packages > Add Package Dependency and enter its repository URL.

https://developer.apple.com/documentation/swift_packages/adding_package_dependencies_to_your_app

# License
ExpandableTextTabBar librtary is available under the MIT license.
