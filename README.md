# FestivalIndia 🇮🇳

An iOS app that showcases Indian festivals categorised by region (North, South, East, West, Pan India) with detailed cultural content and smart reminders.

## Features
- 27 festivals across 5 regions with importance, rituals, and fun facts
- Dynamic dates — fixed-date festivals compute for any year, lunisolar festivals covered through 2030
- Day-before local notifications (scheduled 5 years ahead)
- Search and region filter

## Architecture
Built with **MVP + SOLID principles**
- `S` — Each class has one job (Repository, Presenter, View are fully separate)
- `O` — Protocol-based data layer — swap local data for a remote API without touching Presenters
- `L` — Mock repositories substitute real ones in all unit tests
- `I` — Presenter protocols are small and screen-specific
- `D` — Views are generic over Presenter protocols — never import concrete types

## Tech Stack
- SwiftUI
- UNUserNotificationCenter (local notifications)
- MVVM → refactored to MVP
- XCTest — 31 unit tests
- No third-party dependencies

## Project Structure
