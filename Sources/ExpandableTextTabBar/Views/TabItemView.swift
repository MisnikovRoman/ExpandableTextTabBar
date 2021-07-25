import SwiftUI

struct TabItemView: View {
    private enum Constant {
        static let imageSize = CGSize(width: 30, height: 30)
        static let textRightPadding: CGFloat = 8
        static let maxTextScale: CGFloat = 0.75
        static let textLinesLimit = 1
        static let itemPadding: CGFloat = 8
        static let selectionColorOpacity = 0.2
        static let cornerRadius: CGFloat = 30
    }
    
    let item: TabItem
    let isSelected: Bool
    
    var body: some View {
        HStack {
            item.image
                .font(.title3)
                .frame(width: Constant.imageSize.width, height: Constant.imageSize.height)
                .foregroundColor(isSelected ? item.color : .primary)
            if isSelected {
                Text(isSelected ? item.name : "")
                    .bold()
                    .foregroundColor(item.color)
                    .padding(.trailing, Constant.textRightPadding)
                    .minimumScaleFactor(Constant.maxTextScale)
                    .lineLimit(Constant.textLinesLimit)
            }
        }
        .padding(Constant.itemPadding)
        .background(isSelected ? item.color.opacity(Constant.selectionColorOpacity) : Color.clear)
        .cornerRadius(isSelected ? Constant.cornerRadius : .zero)
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
