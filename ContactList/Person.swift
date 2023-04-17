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
        
        for _ in (0...9) {
            persons.append(
                Person(
                    name: names.randomElement() ?? "",
                    surname: surnames.randomElement() ?? "",
                    phone: phones.randomElement() ?? "",
                    mail: mails.randomElement() ?? ""
                )
            )
        }
        return persons
    }
}


