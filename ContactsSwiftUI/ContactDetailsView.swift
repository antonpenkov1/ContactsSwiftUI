//
//  ContactDetailsView.swift
//  ContactsSwiftUI
//
//  Created by Антон Пеньков on 15.03.2024.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

#Preview {
    ContactDetailsView(person: Person.getContactList()[0])
}
