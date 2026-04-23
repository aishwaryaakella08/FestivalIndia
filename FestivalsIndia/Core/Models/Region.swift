import SwiftUI

// S: Region owns only region-specific data — not festival logic, not UI logic.
enum Region: String, CaseIterable, Codable, Identifiable {
    case all      = "All"
    case north    = "North"
    case south    = "South"
    case east     = "East"
    case west     = "West"
    case panIndia = "Pan India"

    var id: String { rawValue }

    var emoji: String {
        switch self {
        case .all:      return "🇮🇳"
        case .north:    return "🏔️"
        case .south:    return "🌴"
        case .east:     return "🌊"
        case .west:     return "🏜️"
        case .panIndia: return "✨"
        }
    }

    // Gradient stays on Region — it describes the region's visual identity.
    var gradient: [Color] {
        switch self {
        case .all:      return [.orange, .yellow]
        case .north:    return [Color(hex: "1a6b8a"), Color(hex: "5bb8d4")]
        case .south:    return [Color(hex: "2e7d32"), Color(hex: "81c784")]
        case .east:     return [Color(hex: "7b1fa2"), Color(hex: "ce93d8")]
        case .west:     return [Color(hex: "e65100"), Color(hex: "ffb74d")]
        case .panIndia: return [Color(hex: "c62828"), Color(hex: "ef9a9a")]
        }
    }
}
