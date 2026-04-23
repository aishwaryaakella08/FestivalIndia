import SwiftUI

// Reusable bullet list. Works for rituals, steps, features — any string array.
struct BulletListView: View {
    let items: [String]
    let bulletColor: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(items, id: \.self) { item in
                HStack(alignment: .top, spacing: 12) {
                    Circle()
                        .fill(bulletColor)
                        .frame(width: 8, height: 8)
                        .padding(.top, 6)
                    Text(item)
                        .font(.body)
                        .foregroundStyle(.primary)
                }
            }
        }
    }
}
