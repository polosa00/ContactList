//
//  ContactViewController.swift
//  ContactList
//
//  Created by Александр Полочанин on 18.04.23.
//

import UIKit

class DetailContactViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contact.fullName
        phoneLabel.text = contact.phone
        mailLabel.text = contact.mail

    }

}
