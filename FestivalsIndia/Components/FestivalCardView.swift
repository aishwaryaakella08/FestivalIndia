import SwiftUI

// Renders one row in any festival list.
// Only needs FestivalRowDisplayModel — no domain knowledge.
struct FestivalCardView: View {
    let model: FestivalRowDisplayModel

    var body: some View {
        HStack(spacing: 16) {
            gradientBadge
            textContent
        }
        .padding(16)
        .background(.background, in: RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.06), radius: 8, x: 0, y: 4)
    }

    private var gradientBadge: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(LinearGradient(
                    colors: model.gradientColors,
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
                .frame(width: 64, height: 64)
            Text(model.emoji)
                .font(.system(size: 32))
        }
    }

    private var textContent: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(model.name)
                    .font(.headline)
                    .foregroundStyle(.primary)
                Spacer()
                if let text = model.daysAwayText, let color = model.daysAwayColor {
                    DaysAwayBadge(text: text, color: color)
                }
            }
            Text(model.tagline)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .lineLimit(2)
            regionLabel
        }
    }

    private var regionLabel: some View {
        HStack(spacing: 4) {
            Image(systemName: "mappin.circle.fill")
                .font(.caption)
                .foregroundStyle(model.accentColor)
            Text(model.regionLabel)
                .font(.caption)
                .foregroundStyle(model.accentColor)
        }
    }
}
