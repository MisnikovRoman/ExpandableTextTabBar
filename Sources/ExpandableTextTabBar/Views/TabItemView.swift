import SwiftUI

struct TabItemView: View {
    let item: TabItem
    let isSelected: Bool
    
    var body: some View {
        HStack {
            item.image
                .font(.title3)
                .frame(width: 30, height: 30)
                .foregroundColor(isSelected ? item.color : .primary)
            if isSelected {
                Text(isSelected ? item.name : "")
                    .bold()
                    .foregroundColor(item.color)
                    .padding(.trailing, 8)
                    .lineLimit(1)
            }
        }
        .padding(8)
        .background(isSelected ? item.color.opacity(0.2) : Color.clear)
        .cornerRadius(isSelected ? 30 : 0)
    }
}


struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(item: TabItem(image: Image(systemName: "star"), name: "Starred"), isSelected: false)
            .previewLayout(.sizeThatFits)
        TabItemView(item: TabItem(image: Image(systemName: "star"), name: "Starred"), isSelected: true)
            .previewLayout(.sizeThatFits)
    }
}
