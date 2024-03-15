//
//  ContactsView.swift
//  ContactsSwiftUI
//
//  Created by Антон Пеньков on 15.03.2024.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            NavigationLink(destination: ContactDetailsView(person: person)) {
                Text(person.fullName)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContactsView(persons: Person.getContactList())
}
