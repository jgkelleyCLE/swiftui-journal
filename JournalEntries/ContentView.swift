//
//  ContentView.swift
//  JournalEntries
//
//  Created by Jack Kelley on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            List(journalEntries) {entry in
                NavigationLink(destination: JournalDetailView(journalEntry: entry) ){
                JournalRowView(journalEntry: entry)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal \(journalEntries.count > 1 ? "Entries" : "Entry")")
        }
        
        
    }
}

#Preview {
    ContentView()
}
