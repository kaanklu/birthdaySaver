//
//  ViewController.swift
//  Birthday Saver
//
//  Created by Kaan Kalaycıoğlu on 18.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextfield: UITextField!
    
    @IBOutlet weak var birthdayTextfield: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedname = UserDefaults.standard.object(forKey: "name")
        let storedbirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newnumber = storedname as? String {
            nameLabel.text = "Name : \(newnumber)"
            
            if let newbirthday = storedbirthday as? String {
                
                birthdayLabel.text = "Birthday : \(newbirthday)"
            }
            
            
        }
        
        
        
        
    }
    @IBAction func savebuttonClicked(_ sender: Any) {
        UserDefaults.standard.set(nameTextfield.text, forKey: "name")
        UserDefaults.standard.set(birthdayTextfield.text, forKey: "birthday")
        
        nameLabel.text = "Name : \(nameTextfield.text!)"
        birthdayLabel.text = "Birthday : \(birthdayTextfield.text!)"
        
        
        
    }
    @IBAction func deletebuttonClicked(_ sender: Any) {
        let storedname = UserDefaults.standard.object(forKey: "name")
        let storedbirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newnumber = storedname as? String {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name : "
            if let newbirthday = storedbirthday as? String {
                UserDefaults.standard.removeObject(forKey: "birthday")
                birthdayLabel.text = "Birthday :"
                
            }
            
            
            
            
            
            
            
        }
        
    }
}
