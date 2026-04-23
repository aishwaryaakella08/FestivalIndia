import SwiftUI

// Reusable gradient hero header. Used on detail screen; can be reused for any hero layout.
struct GradientHeroView: View {
    let emoji: String
    let title: String
    let subtitle: String
    let gradientColors: [Color]
    let minHeight: CGFloat

    init(
        emoji: String,
        title: String,
        subtitle: String,
        gradientColors: [Color],
        minHeight: CGFloat = 260
    ) {
        self.emoji = emoji
        self.title = title
        self.subtitle = subtitle
        self.gradientColors = gradientColors
        self.minHeight = minHeight
    }

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            LinearGradient(
                colors: gradientColors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .frame(minHeight: minHeight)

            VStack(alignment: .leading, spacing: 8) {
                Text(emoji)
                    .font(.system(size: 72))
                Text(title)
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                Text(subtitle)
                    .font(.subheadline.weight(.medium))
                    .foregroundStyle(.white.opacity(0.9))
            }
            .padding(24)
            .padding(.bottom, 12)
        }
    }
}
