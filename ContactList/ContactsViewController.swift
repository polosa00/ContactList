//
//  ContactsViewController.swift
//  ContactList
//
//  Created by Александр Полочанин on 17.04.23.
//

import UIKit

class ContactsViewController: UITableViewController {

    
    let contactsList = Person.getPerson()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactsList[indexPath.row]
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contact = contactsList[indexPath.row]
        let contactVC = segue.destination as? ContactViewController
        contactVC?.contact = contact
    }
}
