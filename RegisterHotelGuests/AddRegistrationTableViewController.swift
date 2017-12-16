//
//  AddRegistrationTableViewController.swift
//  RegisterHotelGuests
//
//  Created by Amaan on 2017-12-15.
//  Copyright © 2017 Amaan Khan. All rights reserved.
//

import UIKit

class AddRegistrationTableViewController: UITableViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    //MARK: - QUESTION - "??" ???
    @IBAction func doneBarButtonTapped(_ sender: UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
        print("DONE TAPPED")
        print("firstName: \(firstName)")
        print("lastName: \(lastName)")
        print("email: \(email)")
    }
}
