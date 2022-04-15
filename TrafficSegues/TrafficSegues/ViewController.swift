//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Benjamin Ethan Levy on 4/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segueSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if (segueSwitch.isOn) {
            performSegue(withIdentifier: "yellow", sender: nil)
        }
    }
    @IBAction func greenButtonTapped(_ sender: Any) {
        if (segueSwitch.isOn) {
            performSegue(withIdentifier: "green", sender: nil)
        }
    }
    
}

