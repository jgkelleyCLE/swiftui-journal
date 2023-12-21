//
//  EditJournalEntry.swift
//  JournalEntries
//
//  Created by Jack Kelley on 12/21/23.
//

import SwiftUI
import SwiftData

struct EditJournalEntry: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var editingJournalEntry: JournalEntry
    @State var editMode: Bool = false
    
    
    var body: some View {
        if (editMode){
            
            VStack {
                Form {
                    
                    TextField("Title", text: $editingJournalEntry.title)
                    DatePicker("Date", selection: $editingJournalEntry.date, displayedComponents: .date)
                    Text(String(repeating: "⭐️", count: Int(editingJournalEntry.rating)))
                    Slider(value: $editingJournalEntry.rating, in: 1...5, step: 1)
                    TextEditor(text: $editingJournalEntry.text)
                    
                }
                .navigationTitle("Edit Mode")
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing){
                            Button("Done"){
                                editMode = false
                            }
                        }
                }
                Button("Delete"){
                    modelContext.delete(editingJournalEntry)
                    dismiss()
                }
                .foregroundStyle(.red)
            }
        }else {
            JournalDetailView(journalEntry: editingJournalEntry)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing){
                        Button("Edit"){
                            editMode = !editMode
                        }
                    }
                }
        }
        
    }
}

#Preview {
    NavigationStack {
        EditJournalEntry(editingJournalEntry: JournalEntry(title: "First Journal", text: "Learning Swift is going to be a long, hard fight. I'll take any small victories along the way to keep my confidence and motivation high. Can't wait to have my first app in the app store!", rating: 5, date: Date()))
    }
    
}
