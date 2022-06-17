//
//  ProfileTableHederView.swift
//  Navigation
//
//  Created by V SEO on 14.06.2022.
//

import UIKit

class ProfileTableHederView: UIView, UIGestureRecognizerDelegate {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupGestures()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var animator = UIViewPropertyAnimator()
    
    var fieldView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var avatarImageView: UIButton = {
        let view = UIButton()
       // view.image = UIImage(named: "Vinchi-Leonardo-Da")
        view.setBackgroundImage(UIImage(named: "Vinchi-Leonardo-Da"), for: .normal)
        //view.contentMode = .scaleAspectFit
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        view.layer.borderWidth = 3
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 50
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.delegate
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
        button.layer.shadowOpacity = 0.7
       // button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        return button
    }()
    
    var blackView:  UIView = {
    let blackView = UIView()
    blackView.backgroundColor = .black
    blackView.alpha = 0.5
    blackView.frame = UIWindow().frame
        return blackView
    }()
    
    let closeButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 50, y: 200, width: 50, height: 50))
        button.tintColor = .white
        button.setBackgroundImage(UIImage(systemName: "xmark.circle"), for: .normal)
        button.addTarget(self, action: #selector(closeAction), for: .touchUpInside)
        return button
    }()
    
    
    func setupHeader(text: String) {
     //   statusLabel.text = text
        fieldView.frame.size.height = self.frame.size.height
    }
    
    private func setupGestures() {
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        tapGesture.delegate = self
        avatarImageView.addGestureRecognizer(tapGesture)
        
        let closeGesture = UITapGestureRecognizer(target: self, action: #selector(closeAction))
        closeGesture.delegate = self
        closeButton.addGestureRecognizer(closeGesture)
    }
    
    func pauseLayer(layer : CALayer){
        let pausedTime : CFTimeInterval = layer.convertTime(CACurrentMediaTime(), from: nil)
        layer.speed = 0.05
        layer.timeOffset = pausedTime

    }
    
    func resumeAnimation(layer : CALayer){
        let pausedTime = layer.timeOffset
        layer.speed = 0.05
        layer.timeOffset = 0.0
        layer.beginTime = 0.0
        let timeSincePause = layer.convertTime(CACurrentMediaTime(), from: nil) - pausedTime
        layer.beginTime = timeSincePause
    }
    
    @objc private func closeAction() {
        super.self.addSubview(closeButton)
        print("closed")
        self.avatarImageView.removeFromSuperview()
        self.layoutIfNeeded()
        
    }
    
    
    @objc private func tapAction(gesture: UITapGestureRecognizer) {

        let screenSize: CGRect = UIWindow().frame
        
        self.addSubview(blackView)
        UIView.animate(withDuration: 1.0,
                                delay: 0.0,
                                usingSpringWithDamping: 2.5,
                                initialSpringVelocity: 1.3,
                       options: .curveEaseInOut) { [self] in
            avatarImageView.transform = avatarImageView.transform.translatedBy(x: screenSize.width / 3, y: screenSize.height / 3)
            avatarImageView.transform = avatarImageView.transform.scaledBy(x: 3, y: 3)
            //self.addSubview(blackView)
                 } completion: { _ in
                     UIView.animate(withDuration: 3.0,
                                    delay: 0.0) { [self] in
                         self.addSubview(closeButton)
                         //super.layoutIfNeeded()
                         print("COmplition works \(gesture.state)")
                         //self.layoutIfNeeded()
                         //closeAction()
                         }
                     }
                 

       // print("Есть пробитие \(gesture.state)")
        
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
