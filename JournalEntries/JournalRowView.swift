//
//  JournalRowView.swift
//  JournalEntries
//
//  Created by Jack Kelley on 12/19/23.
//

import SwiftUI

struct JournalRowView: View {
    
    let journalEntry: JournalEntry
    
    var body: some View {
        VStack {
            HStack {
                Text("\(journalEntry.title)")
                Text(String(repeating: "⭐️", count: journalEntry.rating))
                    .font(.caption2)
                Spacer()
            }
            Text( "\(journalEntry.text)" )
                .font(.caption)
                .lineLimit(1)
                .truncationMode(.tail)
        }
        
        
    }
}

#Preview {
    JournalRowView(journalEntry: JournalEntry(title: "Preview Title", text: "This is some dummy text", rating: 5, date: Date()))
}
