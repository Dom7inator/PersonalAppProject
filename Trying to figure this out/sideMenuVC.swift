//
//  sideMenuVC.swift
//  Trying to figure this out
//
//  Created by DomenicM on 2023-12-04.
//

import Foundation


import UIKit



class sideMenuVC: UIViewController {
    
    var firstName = "firstName"
    var lastName = "lastName"
    var userEmail = "email@email.com"
    
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var firstAndLastName: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    
    var containerViewLeadingConstraint: NSLayoutConstraint!
        var isMenuVisible = true
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemBlue
            
          
            
            changeLabels()
            
            // Create swipe gesture recognizers for left and right directions
                    let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeLeft))
                    swipeLeft.direction = .left
                    view.addGestureRecognizer(swipeLeft)
                    
                    let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeRight))
                    swipeRight.direction = .right
                    view.addGestureRecognizer(swipeRight)
                }

                @objc func handleSwipeLeft(sender: UISwipeGestureRecognizer) {
                    if sender.state == .ended {
                        if isMenuVisible {
                            hideMenu()
                        }
                    }
                }

                @objc func handleSwipeRight(sender: UISwipeGestureRecognizer) {
                    if sender.state == .ended {
                        if !isMenuVisible {
                            showMenu()
                        }
                    }
                }

                func showMenu() {    //animation to show menu
                    UIView.animate(withDuration: 0.3) {
                        self.containerView.transform = .identity // Show the menu by resetting its position to the initial state
                    }
                    isMenuVisible = true
                }

                func hideMenu() { //animation to hide menu
                    UIView.animate(withDuration: 0.3) {
                        self.containerView.transform = CGAffineTransform(translationX: -self.containerView.bounds.width + 70 , y: 0) // Hide the menu by moving it off-screen to the left
                    }
                    isMenuVisible = false
                }
    
    func changeLabels(){ //func to update the label on the VC
        self.firstAndLastName.text = "\(firstName), \(lastName)"
        self.emailLabel.text = "Email: \(userEmail)"

    }
    
            }
