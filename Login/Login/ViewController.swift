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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = userName.text
    }
    
    @IBAction func forgotUserNamePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "loginToStanding", sender: sender)
    }
    
    @IBAction func forgotPassWordPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotPassWordPressed", sender: sender)
    }
    


}

