//
//  ViewController.swift
//  Trying to figure this out
//
//  Created by DomenicM on 2023-12-01.
//

import UIKit

class ViewController: UIViewController {
    
    enum Segues{
        static let toSideMenu = "toFirstChild"
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSideMenu"{
            let destVC = segue.destination as! sideMenuVC
            destVC.view.backgroundColor = .blue
            
        }
    }


}

