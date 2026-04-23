import SwiftUI

// Reusable anywhere a "X days away" pill is needed.
// I: Only needs text + color — nothing about Festival or Region.
struct DaysAwayBadge: View {
    let text: String
    let color: Color

    var body: some View {
        Text(text)
            .font(.caption.bold())
            .foregroundStyle(color)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(color.opacity(0.12), in: Capsule())
    }
}
