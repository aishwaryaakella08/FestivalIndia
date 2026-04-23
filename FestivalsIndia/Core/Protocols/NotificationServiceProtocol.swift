import UserNotifications

// I: Split into two focused protocols.
//    A Presenter that only checks status doesn't have to know about scheduling.

protocol NotificationPermissionProtocol: AnyObject {
    var authorizationStatus: UNAuthorizationStatus { get }
    func requestPermission() async -> Bool
    func refreshStatus()
}

protocol NotificationSchedulingProtocol: AnyObject {
    func scheduleReminders(for festivals: [Festival], years: ClosedRange<Int>) async
    func cancelAllReminders() async
    func cancelReminders(for festival: Festival) async
}

// Convenience typealias used by Presenters that need both capabilities.
typealias NotificationServiceProtocol = NotificationPermissionProtocol & NotificationSchedulingProtocol
