//
//  CommonListViewController.swift
//  ContactList
//
//  Created by Александр Полочанин on 18.04.23.
//

import UIKit

final class CommonListViewController: UITableViewController {

    let contactSList = Person.getPerson()

    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contactSList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = contactSList[section]
        return contact.fullName
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactSList[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = contact.phone
            content.image = UIImage(named: "phone")
        } else if indexPath.row == 1 {
            content.text = contact.mail
            content.image = UIImage(named: "mail")
        }
       
        cell.contentConfiguration = content

        return cell
    }
}
