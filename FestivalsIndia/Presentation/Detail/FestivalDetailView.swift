import SwiftUI

// Generic over FestivalDetailPresenting — no import of concrete presenter.
struct FestivalDetailView<P: FestivalDetailPresenting & ObservableObject>: View {
    @ObservedObject var presenter: P

    var body: some View {
        Group {
            if let model = presenter.viewState.content {
                contentView(model)
            } else {
                ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea(edges: .top)
        .onAppear { presenter.onAppear() }
    }

    // MARK: - Content

    private func contentView(_ model: FestivalDetailDisplayModel) -> some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                GradientHeroView(
                    emoji: model.emoji,
                    title: model.name,
                    subtitle: "\(model.regionEmoji) \(model.regionLabel) India",
                    gradientColors: model.gradientColors
                )

                VStack(alignment: .leading, spacing: 24) {
                    dateChip(model)

                    SectionCardView(
                        title: "About the Festival",
                        systemImage: "info.circle.fill",
                        accentColor: model.accentColor
                    ) {
                        Text(model.importance)
                            .font(.body)
                            .foregroundStyle(.primary)
                            .lineSpacing(6)
                    }

                    SectionCardView(
                        title: "How It's Celebrated",
                        systemImage: "sparkles",
                        accentColor: model.accentColor
                    ) {
                        BulletListView(items: model.rituals, bulletColor: model.accentColor)
                    }

                    SectionCardView(
                        title: "Did You Know?",
                        systemImage: "lightbulb.fill",
                        accentColor: model.accentColor
                    ) {
                        VStack(spacing: 12) {
                            ForEach(model.funFacts, id: \.self) { fact in
                                FactCardView(text: fact, backgroundColor: model.accentColor)
                            }
                        }
                    }
                }
                .padding(20)
            }
        }
    }

    // MARK: - Date chip

    private func dateChip(_ model: FestivalDetailDisplayModel) -> some View {
        HStack(spacing: 8) {
            Image(systemName: "calendar")
                .foregroundStyle(model.accentColor)
            Text(model.dateText)
                .font(.subheadline.weight(.medium))
                .foregroundStyle(model.accentColor)
            Spacer()
            if let text = model.countdownText, let color = model.countdownColor {
                DaysAwayBadge(text: text, color: color)
            }
        }
        .padding(14)
        .background(model.accentColor.opacity(0.1), in: RoundedRectangle(cornerRadius: 14))
    }
}
