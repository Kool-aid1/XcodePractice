//
//  Event.swift
//  XcodeDemo
//
//  Created by Kenny Ly on 7/1/24.
//

import Foundation

struct Event: Identifiable {
    enum EventType: String, Identifiable, CaseIterable {
        case work, home, social, sport, unspecified
        var id: String {
            self.rawValue
        }
        
        var icon: String {
            switch self {
            case .work:
                return "work"
            case .home:
                return "home"
            case .social:
                return "social"
            case .sport:
                return "sport"
            case .unspecified:
                return "unspecified"
            }
        }
    }
    
    var eventType: EventType
    var date: Date
    var note: String
    var id: String
    
    init(id: String = UUID().uuidString, eventType: EventType = .unspecified, date: Date, note: String) {
        self.eventType = eventType
        self.date = date
        self.note = note
        self.id = id
    }
    
    static var sampleEvents: [Event] {
        return [
            Event(eventType: .home, date: Date().diff(numDays:0), note: "special event")
        ]
    }
}
