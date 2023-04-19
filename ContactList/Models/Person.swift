//
//  Person.swift
//  ContactList
//
//  Created by Александр Полочанин on 17.04.23.
//

struct Person {
    let name: String
    let surname: String
    var fullName: String {
        "\(name) \(surname)"
    }
    let phone: String
    let mail: String
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.getNames().shuffled()
        let surnames = DataStore.getSurnames().shuffled()
        let phones = DataStore.getPhones().shuffled()
        let mails = DataStore.getMails().shuffled()
        
        (0...9).forEach { index in
            persons.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    mail: mails[index]
                )
            )
        }
    
        return persons
    }
}



