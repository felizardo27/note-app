//
//  note.swift
//  notes
//
//  Created by João Pedro on 26/05/26.
//

import Foundation
import SwiftUI

struct Note: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var body: String
}
