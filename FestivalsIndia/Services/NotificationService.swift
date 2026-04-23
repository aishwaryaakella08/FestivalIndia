import UserNotifications

// S: One job — manage notification permissions and scheduling. Nothing else.
// L: Fully substitutable for NotificationServiceProtocol in any Presenter.
final class NotificationService: NSObject, NotificationServiceProtocol {

    static let shared = NotificationService()

    private(set) var authorizationStatus: UNAuthorizationStatus = .notDetermined

    private override init() {
        super.init()
        UNUserNotificationCenter.current().delegate = self
        refreshStatus()
    }

    // MARK: - NotificationPermissionProtocol

    func requestPermission() async -> Bool {
        do {
            let granted = try await UNUserNotificationCenter.current()
                .requestAuthorization(options: [.alert, .sound, .badge])
            await MainActor.run { refreshStatus() }
            return granted
        } catch {
            return false
        }
    }

    func refreshStatus() {
        UNUserNotificationCenter.current().getNotificationSettings { [weak self] settings in
            DispatchQueue.main.async {
                self?.authorizationStatus = settings.authorizationStatus
            }
        }
    }

    // MARK: - NotificationSchedulingProtocol

    func scheduleReminders(for festivals: [Festival], years: ClosedRange<Int>) async {
        guard authorizationStatus == .authorized else { return }
        await cancelAllReminders()

        for festival in festivals {
            for year in years {
                guard let notifDate = festival.notificationDate(for: year),
                      notifDate > .now else { continue }

                let content = UNMutableNotificationContent()
                content.title = "\(festival.emoji) \(festival.name) is Tomorrow!"
                content.body = festival.tagline
                content.sound = .default

                var comps = Calendar.current.dateComponents([.year, .month, .day], from: notifDate)
                comps.hour = 9
                comps.minute = 0

                let trigger = UNCalendarNotificationTrigger(dateMatching: comps, repeats: false)
                let request = UNNotificationRequest(
                    identifier: notificationID(for: festival, year: year),
                    content: content,
                    trigger: trigger
                )
                try? await UNUserNotificationCenter.current().add(request)
            }
        }
    }

    func cancelAllReminders() async {
        let center = UNUserNotificationCenter.current()
        let ids = await center.pendingNotificationRequests()
            .filter { $0.identifier.hasPrefix("festival.") }
            .map { $0.identifier }
        center.removePendingNotificationRequests(withIdentifiers: ids)
    }

    func cancelReminders(for festival: Festival) async {
        let center = UNUserNotificationCenter.current()
        let ids = await center.pendingNotificationRequests()
            .filter { $0.identifier.contains(festival.id.uuidString) }
            .map { $0.identifier }
        center.removePendingNotificationRequests(withIdentifiers: ids)
    }

    // MARK: - Private

    private func notificationID(for festival: Festival, year: Int) -> String {
        "festival.\(festival.id.uuidString).\(year)"
    }
}

extension NotificationService: UNUserNotificationCenterDelegate {
    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler handler: @escaping (UNNotificationPresentationOptions) -> Void
    ) {
        handler([.banner, .sound])
    }
}
