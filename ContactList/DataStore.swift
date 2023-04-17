//
//  DataStore.swift
//  ContactList
//
//  Created by Александр Полочанин on 17.04.23.
//

class DataStore {
    
    static func getNames() -> [String] {
        let names = [
            "Alex",
            "John",
            "Jack",
            "Sven",
            "Pol",
            "Fabian",
            "Colin",
            "Sara",
            "David",
            "Ann"
        ]
        return names
    }
    
    static func getSurnames() -> [String] {
        let surnames = [
            "Pol",
            "Week",
            "Anderson",
            "Farel",
            "Conor",
            "Rogers",
            "Parker",
            "Johns",
            "Gray",
            "Black"
        ]
        return surnames
    }
    
    static func getPhones() -> [String] {
        let phones = [
            "123124454",
            "213454543",
            "463234563",
            "467342788",
            "687432557",
            "568453536",
            "557556367",
            "857356837",
            "658245622",
            "989893432"
        ]
        return phones
    }
    
    static func getMails() -> [String] {
        let mails = [
            "sdfs@mail.ru",
            "dsf4@mail.ru",
            "kojo@mail.ru",
            "klik@mail.ru",
            "shao@mail.ru",
            "knai@mail.ru",
            "pppk@mail.ru",
            "oopk@mail.ru",
            "cccv@mail.ru",
            "llkj@mail.ru"
        ]
        return mails
    }
}
