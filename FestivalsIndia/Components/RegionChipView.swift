import SwiftUI

// Reusable tab chip. Knows nothing about Festival — just gradient + label.
struct RegionChipView: View {
    let item: RegionTabItem
    let isSelected: Bool
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            HStack(spacing: 6) {
                Text(item.emoji)
                Text(item.title)
                    .font(.subheadline.weight(isSelected ? .bold : .regular))
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
            .background(background, in: Capsule())
            .foregroundStyle(isSelected ? .white : .primary)
            .shadow(color: .black.opacity(isSelected ? 0.12 : 0.04), radius: 4, x: 0, y: 2)
        }
        .buttonStyle(.plain)
        .animation(.spring(response: 0.25), value: isSelected)
    }

    private var background: LinearGradient {
        isSelected
            ? LinearGradient(colors: item.gradient, startPoint: .leading, endPoint: .trailing)
            : LinearGradient(colors: [Color(.systemBackground)], startPoint: .leading, endPoint: .trailing)
    }
}
