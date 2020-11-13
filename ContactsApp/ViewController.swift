//
//  ViewController.swift
//  ContactsApp
//
//  Created by Amy Alsaydi on 11/13/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var contacts = [Contact]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        getContacts()
    }

    
    func setUpTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func getContacts() {
        contacts = Contact.getContacts()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell") else {
            return UITableViewCell()
        }
        
        let contact = contacts[indexPath.row]
        
        cell.textLabel?.text = contact.fullName
        cell.detailTextLabel?.text = "Number: \(contact.phoneNumber)"
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
