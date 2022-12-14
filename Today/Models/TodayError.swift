//
//  TodayError.swift
//  Today
//
//  Created by Pragatha Muthusamy on 12/4/22.
//

import Foundation

enum TodayError: LocalizedError {
    case accessDenied
    case accessRestricted
    case failedReadingCalendarItem
    case failedReadingReminders
    case reminderHasNoDueDate
    
    var errorDescription: String? {
        switch self {
        case .accessDenied:
            return NSLocalizedString("This app doesn't have permission to read reminders", comment: "access denied error description")
        case .accessRestricted:
            return NSLocalizedString("This app doesn't allow access to read reminders", comment: "access restricted error description")
        case .failedReadingCalendarItem:
            return NSLocalizedString("Failed to read a calendar item", comment: "failed reading calendar item error description")
        case .failedReadingReminders:
            return NSLocalizedString("Failed to read reminders", comment: "failed reading reminders")
        case .reminderHasNoDueDate:
            return NSLocalizedString("A reminder has no due date", comment: "reminder has no due error description")
            
        }
    }
}
