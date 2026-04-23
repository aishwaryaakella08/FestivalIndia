import SwiftUI

// Reusable card wrapper with a titled header and accent icon.
// Used in Detail, Settings, or any screen needing a content card.
struct SectionCardView<Content: View>: View {
    let title: String
    let systemImage: String
    let accentColor: Color
    let content: () -> Content

    init(
        title: String,
        systemImage: String,
        accentColor: Color,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.title = title
        self.systemImage = systemImage
        self.accentColor = accentColor
        self.content = content
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(spacing: 8) {
                Image(systemName: systemImage)
                    .foregroundStyle(accentColor)
                Text(title)
                    .font(.title3.bold())
            }
            content()
        }
        .padding(18)
        .background(.background, in: RoundedRectangle(cornerRadius: 18))
        .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 4)
    }
}
