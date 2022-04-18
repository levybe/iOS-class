//
//  ViewController.swift
//  Login
//
//  Created by Benjamin Ethan Levy on 4/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var forgotUserName: UIButton!
    @IBOutlet weak var forgotPassWord: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        guard let sender = sender as? UIButton else {
            return
        }

        if sender == forgotPassWord {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserName {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }
    
    @IBAction func forgotUserNamePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "screenSegue", sender: sender)
    }
    
    @IBAction func forgotPassWordPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "screenSegue", sender: sender)
        
        
    }
    


}

