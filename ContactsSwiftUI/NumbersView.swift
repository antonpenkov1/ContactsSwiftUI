//
//  NumbersView.swift
//  ContactsSwiftUI
//
//  Created by Антон Пеньков on 15.03.2024.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Section(header: Text(person.fullName)) {
                Label(person.phoneNumber, systemImage: "phone")
                Label(person.email, systemImage: "tray")
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    NumbersView(persons: Person.getContactList())
}
