//
//  ProfileTableHederView.swift
//  Navigation
//
//  Created by V SEO on 14.06.2022.
//

import UIKit

class ProfileTableHederView: UIView, UIGestureRecognizerDelegate {

    let screenSize: CGRect = UIWindow().frame
    var animator = UIViewPropertyAnimator()
    
    var fieldView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var avatarImageView: UIButton = {
        let view = UIButton()
        view.setBackgroundImage(UIImage(named: "Vinchi-Leonardo-Da"), for: .normal)
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
        button.layer.shadowOffset = CGSize(width: 34, height: 34)
        button.layer.shadowRadius = 104
        button.layer.shadowColor = UIColor.yellow.cgColor
        button.addTarget(self, action: #selector(setStatusAction), for: .touchUpInside)
        button.layer.shadowOpacity = 0.7
        return button
    }()
    
    var blackView:  UIButton = {
        let blackView = UIButton()
        blackView.backgroundColor = .black
        blackView.alpha = 0.5
        blackView.frame = UIWindow().frame
        blackView.addTarget(self, action: #selector(closeBlackAction), for: .touchUpInside)
        return blackView
    }()
    
    private lazy var closeButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 50, y: 200, width: 50, height: 50))
        button.tintColor = .white
        button.layer.position = CGPoint(x: 50, y: 200)
        button.setBackgroundImage(UIImage(systemName: "xmark.circle"), for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupGestures()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupHeader(text: String) {
     //   statusLabel.text = text
  //      fieldView.frame.size.height = self.frame.size.height
    }
    
    private func setupGestures() {
               
        let closeGesture = UITapGestureRecognizer(target: self, action: #selector(tapAvatarAction))
        avatarImageView.addGestureRecognizer(closeGesture)
        
        let closeBlackView = UITapGestureRecognizer(target: self, action: #selector(closeBlackAction))
        blackView.addGestureRecognizer(closeBlackView)
    }
    
    @objc private func setStatusAction (){
        if statusTextField.text == "" {
            UIView.animate(withDuration: 1.0,
                                    delay: 0.0,
                                    usingSpringWithDamping: 2.5,
                                    initialSpringVelocity: 1.3,
                           options: .beginFromCurrentState) { [self] in statusTextField.layer.borderColor = UIColor.red.cgColor } completion: { _ in self.statusTextField.layer.borderColor = UIColor.black.cgColor
            }
        }
        statusLabel.text = statusTextField.text
    }
    
    @objc private func closeBlackAction() {
        print("Нажатие на черную View")
        self.closeButton.removeFromSuperview()
        self.blackView.removeFromSuperview()
        UIView.animate(withDuration: 1.0,
                                delay: 0.0,
                                usingSpringWithDamping: 2.5,
                                initialSpringVelocity: 1.3,
                       options: .beginFromCurrentState) { [self] in
                            
                        avatarImageView.transform = avatarImageView.transform.scaledBy(x: 1 / 3, y: 1 / 3)
                        avatarImageView.transform = avatarImageView.transform.translatedBy( x: -(screenSize.width / 3), y: -(screenSize.height / 3))
            self.layoutIfNeeded()
                 }

    }
    
    @objc private func tapAvatarAction() {
        print("We are in tapAction on Avatar")
        superview?.addSubview(blackView)
        blackView.frame = UIWindow().frame
        blackView.layer.frame = UIWindow().frame
        blackView.becomeFirstResponder()
        avatarImageView.frame = CGRect(x: 0, y: 0, width: 300, height: 800)
        addSubview(avatarImageView)
        avatarImageView.alpha = 1

        UIView.animate(withDuration: 1.0,
                                delay: 0.0,
                                
                                usingSpringWithDamping: 2.5,
                                initialSpringVelocity: 1.3,
                       options: .layoutSubviews) { [self] in
                            avatarImageView.transform = avatarImageView.transform.translatedBy(x: screenSize.width / 3, y: screenSize.height / 3)
                            avatarImageView.transform = avatarImageView.transform.scaledBy(x: 3, y: 3)
            
                 } completion:
                    { _ in UIView.animate(withDuration: 0.2,delay: 0.0) { [self] in addSubview(closeButton)
                        print("exit from animation")
                                               }
                     }
                 
    }
    
    func layout() {
        
        addSubview(fieldView)
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(button)
        
        NSLayoutConstraint.activate([
            fieldView.topAnchor.constraint(equalTo: topAnchor),
            fieldView.heightAnchor.constraint(equalToConstant: 200),
            fieldView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
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
