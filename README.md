# Notes App

A simple note-taking application built with SwiftUI for macOS/iOS using `NavigationSplitView`, `List`, `TextField`, and `TextEditor`.

## Features

- Create new notes
- Select notes from the sidebar
- Edit note titles
- Edit note content
- Real-time updates using `@State` and `@Binding`
- Responsive sidebar and detail layout

---

## Project Structure

```bash
notes/
├── ContentView.swift
├── Note.swift
├── NoteDetailView.swift
└── notesApp.swift
```

### Files Overview

#### `ContentView.swift`

Responsible for:

- Managing the notes list
- Handling note selection
- Creating new notes
- Displaying the sidebar and detail view

#### `Note.swift`

Defines the `Note` model.

```swift
struct Note: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var body: String
}
```

#### `NoteDetailView.swift`

Handles note editing using bindings.

#### `notesApp.swift`

Application entry point.

---

## Technologies

- SwiftUI
- Swift
- Xcode

---

## How It Works

### State Management

The app uses:

- `@State` to manage notes locally
- `@Binding` to update selected notes

Example:

```swift
@State private var notes: [Note] = []
@Binding var note: Note
```

---

## Navigation

The application uses `NavigationSplitView` to create a sidebar and detail interface.

```swift
NavigationSplitView {
    List(selection: $selectedNote) {
        ...
    }
} detail: {
    ...
}
```

---

## Running the Project

### Requirements

- macOS
- Xcode 15+
- Swift 5+

### Steps

1. Open the project in Xcode
2. Select a simulator or physical device
3. Run the project using:

```bash
⌘ + R
```

---

## Future Improvements

- Save notes using `UserDefaults` or `CoreData`
- Delete notes
- Add search functionality
- Markdown support
- iCloud synchronization
- Improved UI customization

---

## Application Flow

1. Launch the app
2. View notes in the sidebar
3. Select a note to edit
4. Create new notes using the toolbar button

---

## License

This project was created for learning and study purposes.
