//
//  CreateJournalEntry.swift
//  JournalEntries
//
//  Created by Jack Kelley on 12/20/23.
//

import SwiftUI
import SwiftData

struct CreateJournalEntry: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var text: String = "Today was..."
    @State var rating: Double = 1.0
    @State var date: Date = Date()
    
    var body: some View {
        NavigationStack {
            Form {
                
                TextField("Title", text: $title)
                DatePicker("Date", selection: $date, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(rating)))
                Slider(value: $rating, in: 1...5, step: 1)
                TextEditor(text: $text)
                
            }
            .navigationTitle("New Journal Entry")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel"){
                        dismiss()
                }
                
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button("Save"){
                        let newJournalEntry = JournalEntry(title: title, text: text, rating: rating, date: date)
                        modelContext.insert(newJournalEntry)
                        dismiss()
                    }
                }
                
            }
        }
        
    }
}

#Preview {
    CreateJournalEntry()
//        .modelContainer(for: JournalEntry.self, inMemory: true)
}
