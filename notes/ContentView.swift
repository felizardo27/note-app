//
//  ContentView.swift
//  notes
//
//  Created by João Pedro on 26/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var notes: [Note] = [
        Note(title: "Hello", body: "First note")
    ]
    @State private var selectedNote: Note?
    var body: some View {
        NavigationSplitView {
            List(selection: $selectedNote) {
                ForEach(notes) { note in
                    Text(note.title)
                        .tag(note)
                }
            }
            .navigationTitle("My notes")
            .listStyle(.sidebar)
            .toolbar {
                Button("New Note") {
                    let newNote = Note(title: "New Note", body: "")
                    notes.append(newNote)
                    selectedNote = newNote
                }
            }
            .frame(minWidth: 100)
        } detail: {
            if let note = selectedNote {
                NoteDetailView(note: binding(for: note))
            } else {
                Text("Select note")
                    .foregroundStyle(Color.secondary)
            }
        }
    }
    private func binding(for note: Note) -> Binding<Note> {
        guard
            let index = notes.firstIndex(where: {
                $0.id == note.id
            })
        else {
            fatalError("Note not found ")
        }
        return $notes[index]
    }
}

#Preview {
    ContentView()
}
