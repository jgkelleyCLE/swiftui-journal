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
                    .bold()
                    .lineLimit(1)
                Spacer()
                Text( "\(journalEntry.text)" )
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                Spacer()
            }
            HStack {
                Text(journalEntry.date, style: .date)
                    .foregroundStyle(.secondary)
                    .font(.caption)
                Spacer()
                Text(String(repeating: "⭐️", count: Int(journalEntry.rating)))
                    .font(.caption2)
                
            }
            
        }
        
        
    }
}

#Preview {
    JournalRowView(journalEntry: JournalEntry(title: "Preview Title", text: "This is some dummy text", rating: 5, date: Date()))
}
