import SwiftUI

struct TabBarView: View {
    
    private let animationDuration = 0.3
    
    let items: [TabItem]
    @Binding var selection: Int
    
    var body: some View {
        HStack {
            Spacer()
            
            ForEach(items, id: \.name) { item in
                TabItemView(item: item, isSelected: item == selectedItem)
                    .onTapGesture { selection = index(of: item) }
                Spacer()
            }
            .animation(.easeIn(duration: animationDuration))
        }
    }
    
    var selectedItem: TabItem {
        items[selection]
    }
    
    func index(of item: TabItem) -> Int {
        items.firstIndex(of: item)!
    }
}

struct TabBarView_Previews: PreviewProvider {
    
    static let items = [
        TabItem(image: Image(systemName: "circle"), name: "Item 0", color: .purple),
        TabItem(image: Image(systemName: "square"), name: "Item 1", color: .yellow),
        TabItem(image: Image(systemName: "triangle"), name: "Item 2", color: .red),
        TabItem(image: Image(systemName: "star"), name: "Item 3", color: .blue),
        TabItem(image: Image(systemName: "seal"), name: "Item 4", color: .green)
    ]
    
    static var previews: some View {
        Group {
            TabBarView(items: items, selection: .constant(0))
                .previewLayout(.sizeThatFits)
            TabBarView(items: items, selection: .constant(1))
                .background(Color.black)
                .previewLayout(.sizeThatFits)
                .environment(\.colorScheme, .dark)
        }
    }
}
