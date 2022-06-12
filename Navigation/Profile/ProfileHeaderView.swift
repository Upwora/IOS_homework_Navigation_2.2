//
//  TestUIviewController.swift
//  Navigation
//
//  Created by V SEO on 10.06.2022.
//

import UIKit

class headerView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
      //  layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var avatarImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Vinchi-Leonardo-Da")
        //view.contentMode = .scaleAspectFit
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
  //      button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        return button
    }()

    func layout() {
//        
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(button)
        
        NSLayoutConstraint.activate([
            avatarImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            avatarImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            
            fullNameLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 16),
            fullNameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            fullNameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 50),
       
            statusLabel.leftAnchor.constraint(equalTo:  avatarImageView.rightAnchor, constant: 16),
            statusLabel.topAnchor.constraint(equalTo:  fullNameLabel.bottomAnchor, constant: 30),
            statusLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            
            statusTextField.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 16),
            statusTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            statusTextField.widthAnchor.constraint(equalToConstant: 100),
            statusTextField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 120),
            
            button.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            button.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            button.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 160)
        ])
        

    }
    
}
