import SwiftUI

// Reusable highlighted fact tile. Works for fun facts, tips, or callouts on any screen.
struct FactCardView: View {
    let text: String
    let backgroundColor: Color
    let icon: String

    init(text: String, backgroundColor: Color, icon: String = "💡") {
        self.text = text
        self.backgroundColor = backgroundColor
        self.icon = icon
    }

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Text(icon)
                .font(.callout)
            Text(text)
                .font(.body)
                .foregroundStyle(.primary)
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(backgroundColor.opacity(0.08), in: RoundedRectangle(cornerRadius: 12))
    }
}
