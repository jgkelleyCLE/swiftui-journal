//
//  JournalEntry.swift
//  JournalEntries
//
//  Created by Jack Kelley on 12/19/23.
//

import Foundation

class JournalEntry: Identifiable {
    var title: String = ""
    var text: String = ""
    var rating: Int = 1
    var date: Date = Date()
    
    
    init(title: String, text: String, rating: Int, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}


let journalEntries: [JournalEntry] = [
                                JournalEntry(title: "First Journal Entry!", text: "This was such a great day! Met with some old friends and had dinner!", rating: 5, date: Date()),
                                JournalEntry(title: "Headache Day", text: "I woke up with a migraine and it never got better :(", rating: 1, date: Date()),
                                JournalEntry(title: "I made an app!", text: "My app got accepted to the app store, but i found a bug in it!", rating: 4, date: Date()),
                                    ]
