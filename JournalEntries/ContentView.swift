//
//  ContentView.swift
//  JournalEntries
//
//  Created by Jack Kelley on 12/19/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \JournalEntry.date, order: .reverse) private var journalEntries: [JournalEntry]
    
    @State private var showSheet = false
    
    var body: some View {
        NavigationStack {
            List(journalEntries) {entry in
                NavigationLink(destination: EditJournalEntry(editingJournalEntry: entry) ){
                    JournalRowView(journalEntry: entry)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal \(journalEntries.count == 1 ? "Entry" : "Entries")")
            .toolbar {
                Button(action: {
                    showSheet = true
                }) {
                    Label("Add Item", systemImage: "plus")
                }
            }
            .sheet(isPresented: $showSheet){
                CreateJournalEntry()
                
            }
        }
        
        
        
    }
    
    private func addJournalEntry(){
        print("Added")
        
        //create the object
        let newJournal = JournalEntry(title: "First Journal", text: "Learning Swift is going to be a long, hard fight. I'll take any small victories along the way to keep my confidence and motivation high. Can't wait to have my first app in the app store!", rating: 5, date: Date())
        
        //save into swift data
        modelContext.insert(newJournal)
    }
    
}

#Preview {
    ContentView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
