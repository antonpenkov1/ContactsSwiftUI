//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Антон Пеньков on 15.03.2024.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            TabView {
                ContactsView(persons: persons)
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("Contacts")
                    }
                
                NumbersView(persons: persons)
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContentView()
}
