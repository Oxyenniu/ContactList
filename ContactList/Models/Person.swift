//
//  Person.swift
//  ContactList
//
//  Created by Oxyenniu on 23.11.2022.
//

struct Person {
    let firstNames: String
    let lastNames: String
    let phoneNumbers: String
    let emails: String
    
    var fullName: String {
        "\(firstNames) \(lastNames)"
    }
    
}
extension Person {
    static func getPerson() -> [Person] {
        let firstName = DataStore.shared.dataFirstNames
        let lastName = DataStore.shared.dataLastNames
        let phoneNumber = DataStore.shared.dataPhoneNumbers
        let email = DataStore.shared.dataEmails
        
        var persons: [Person] = []
        
        for _ in 1...firstName.count {
            persons.append(Person(
                firstNames: firstName.randomElement() ?? "a",
                lastNames: lastName.randomElement() ?? "b",
                phoneNumbers: phoneNumber.randomElement() ?? "c",
                emails: email.randomElement() ?? "d"))
        }
        return persons
    }
}

