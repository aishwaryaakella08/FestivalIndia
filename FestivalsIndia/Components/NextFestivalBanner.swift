import SwiftUI

// Reusable hero banner. Can be dropped into any screen — zero coupling to domain.
struct NextFestivalBanner: View {
    let model: NextFestivalDisplayModel
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            ZStack(alignment: .bottomLeading) {
                LinearGradient(
                    colors: model.gradientColors,
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .clipShape(RoundedRectangle(cornerRadius: 24))

                VStack(alignment: .leading, spacing: 6) {
                    Label(model.countdownText, systemImage: "calendar.badge.clock")
                        .font(.caption.bold())
                        .foregroundStyle(.white.opacity(0.9))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(.white.opacity(0.2), in: Capsule())

                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(model.name)
                                .font(.title2.bold())
                                .foregroundStyle(.white)
                            Text(model.tagline)
                                .font(.subheadline)
                                .foregroundStyle(.white.opacity(0.85))
                                .lineLimit(2)
                        }
                        Spacer()
                        Text(model.emoji)
                            .font(.system(size: 56))
                    }
                }
                .padding(20)
            }
            .frame(height: 160)
        }
        .buttonStyle(.plain)
    }
}
