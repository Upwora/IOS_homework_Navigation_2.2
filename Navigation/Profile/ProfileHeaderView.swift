//
//  TestUIviewController.swift
//  Navigation
//
//  Created by V SEO on 10.06.2022.
//

import UIKit

<<<<<<< HEAD
class ProfileHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(button)
        layout() 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var avatarImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Vinchi-Leonardo-Da")
=======
class TestUIview: UIView {

    var avatarImageView: UIImageView = {
        let view = UIImageView()//frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.image = UIImage(named: "Vinchi-Leonardo-Da")
        //view.contentMode = .scaleAspectFit
>>>>>>> 6f15d0b34be0775964bace96fe2e02c2fcdb3a2a
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        view.layer.borderWidth = 3
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 50
        
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var fullNameLabel: UILabel = {
    let view = UILabel()
    view.text = "Leonardo Da Vinci"
    view.font = UIFont(name: "Helvetica-Bold", size: 18)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()
    
    var statusLabel: UILabel = {
    let view = UILabel()
    view.text = "Learning never exhausts the mind."
    view.font = UIFont(name: "Helvetica", size: 14)
    view.translatesAutoresizingMaskIntoConstraints = false
<<<<<<< HEAD
        
=======
>>>>>>> 6f15d0b34be0775964bace96fe2e02c2fcdb3a2a
    return view
}()
    
    var statusTextField: UITextField = {
        let view = UITextField()
        view.borderStyle = .roundedRect
        view.backgroundColor = .white
        view.text = "Set your status"
        view.textColor = .lightGray
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        view.clearsOnBeginEditing = true 
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Set status", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.layer.shadowOffset.height = 10
<<<<<<< HEAD
        return button
    }()

     func layout() {
                        
        NSLayoutConstraint.activate([
            self.avatarImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            self.avatarImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            self.avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            self.avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            
            self.fullNameLabel.leftAnchor.constraint(equalTo: self.avatarImageView.rightAnchor, constant: 16),
            self.fullNameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            self.fullNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            self.fullNameLabel.heightAnchor.constraint(equalToConstant: 50),
            
            self.statusLabel.leftAnchor.constraint(equalTo:  self.avatarImageView.rightAnchor, constant: 16),
            self.statusLabel.topAnchor.constraint(equalTo:  self.fullNameLabel.bottomAnchor, constant: 30),
            self.statusLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            
            self.statusTextField.leftAnchor.constraint(equalTo: self.avatarImageView.rightAnchor, constant: 16),
            self.statusTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            self.statusTextField.widthAnchor.constraint(equalToConstant: 100),
            self.statusTextField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 120),
            
            self.button.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            self.button.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),            
            self.button.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 160)
        ])
        

    }
=======
  //      button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        return button
    }()

>>>>>>> 6f15d0b34be0775964bace96fe2e02c2fcdb3a2a
}
