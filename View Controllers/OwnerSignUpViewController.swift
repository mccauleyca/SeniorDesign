//
//  OwnerSignUpViewController.swift
//  Anchor
//
//  Created by Callen McCauley on 5/3/19.
//  Copyright © 2019 Anchor. All rights reserved.
//

import UIKit
import FirebaseDatabase

class OwnerSignUpViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var numOfSpaces: UITextField!
    @IBOutlet weak var SignUp: UIButton!
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()

        // Do any additional setup after loading the view.
    }
    
    func checkField(sender: AnyObject) {
        if username.text!.isEmpty || email.text!.isEmpty || password.text!.isEmpty || confirmPassword.text!.isEmpty || numOfSpaces.text!.isEmpty
        {
            SignUp.isEnabled = false
            
        }
        else
        {
            SignUp.isEnabled = true
        }
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        self.ref.child("Racks").setValue(["username": "1"]);
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
