//
//  TestUIviewController.swift
//  Navigation
//
//  Created by V SEO on 10.06.2022.
//

import UIKit

class ProfileViewController: UIViewController {
<<<<<<< HEAD
let profileView = ProfileHeaderView()
=======
let testView = TestUIview()
   
>>>>>>> 6f15d0b34be0775964bace96fe2e02c2fcdb3a2a
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
<<<<<<< HEAD
        view.addSubview(profileView)
        view.backgroundColor = .lightGray
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
      
=======
        view.backgroundColor = .lightGray
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        layout()
>>>>>>> 6f15d0b34be0775964bace96fe2e02c2fcdb3a2a
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
<<<<<<< HEAD
    
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        profileView.frame = view.frame
        
=======
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
>>>>>>> 6f15d0b34be0775964bace96fe2e02c2fcdb3a2a
        let screenSize: CGRect = UIWindow().frame
        print(screenSize.width, screenSize.height)
             
    }
    
<<<<<<< HEAD
        
=======
        private func layout() {
            
            view.addSubview(testView.avatarImageView)
            view.addSubview(testView.fullNameLabel)
            view.addSubview(testView.statusLabel)
            view.addSubview(testView.statusTextField)
            view.addSubview(testView.button)
            
            NSLayoutConstraint.activate([
                testView.avatarImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
                testView.avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
               // testView.avatarImageView.heightAnchor.constraint(equalToConstant: 200),
                
//                testView.avatarImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant:15),
                testView.avatarImageView.heightAnchor.constraint(equalToConstant: 100),
                testView.avatarImageView.widthAnchor.constraint(equalToConstant: 100),
//                testView.avatarImageView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/1.5),
                
                testView.fullNameLabel.leftAnchor.constraint(equalTo: testView.avatarImageView.rightAnchor, constant: 16),
                testView.fullNameLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -10),
                testView.fullNameLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 15),
                testView.fullNameLabel.heightAnchor.constraint(equalToConstant: 50),
           //     testView.fullNameLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/1.5),
                
                testView.statusLabel.leftAnchor.constraint(equalTo:  testView.avatarImageView.rightAnchor, constant: 16),
                testView.statusLabel.topAnchor.constraint(equalTo:  testView.fullNameLabel.bottomAnchor, constant: 30),
                testView.statusLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -16),
                
                testView.statusTextField.leftAnchor.constraint(equalTo: testView.avatarImageView.rightAnchor, constant: 16),
                testView.statusTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
                testView.statusTextField.widthAnchor.constraint(equalToConstant: 100),
                testView.statusTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
                
                testView.button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
                testView.button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
                
                testView.button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 160)
            ])
            

        }
>>>>>>> 6f15d0b34be0775964bace96fe2e02c2fcdb3a2a
        
    }
