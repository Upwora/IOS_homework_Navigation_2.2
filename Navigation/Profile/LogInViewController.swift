//
//  LogInViewController.swift
//  Navigation
//
//  Created by V SEO on 11.06.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(emailTextField)
        contentView.addSubview(passTextField)
        contentView.addSubview(logoImageView)
        contentView.addSubview(button)
        layout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        nc.addObserver(self, selector: #selector(kbdShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        nc.addObserver(self, selector: #selector(kbdHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        nc.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        nc.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func kbdShow(notification: NSNotification) {
        if let kbdSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            scrollView.contentInset.bottom = kbdSize.height
            scrollView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: kbdSize.height, right: 0)
        }
    }
    
    @objc private func kbdHide() {
        scrollView.contentInset = .zero
        scrollView.verticalScrollIndicatorInsets = .zero
    }

    private let nc = NotificationCenter.default
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let contentView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
        return $0
    }(UIView())
    
    var fullNameLabel: UILabel = {
    let view = UILabel()

        
    view.text = "Leonardo Da Vinci"
    view.font = UIFont(name: "Helvetica-Bold", size: 18)
    view.backgroundColor = UIColor(named: "4885CC")
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()
    
    var logoImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "logo")
        view.contentMode = .scaleAspectFit
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        //view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
   lazy var emailTextField: UITextField = {
        let view = UITextField()
        view.borderStyle = .roundedRect
        view.backgroundColor = .systemGray6
        view.text = "Email or phone"
        view.textColor = .lightGray
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        view.clearsOnBeginEditing = true
        view.delegate = self
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
 lazy   var passTextField: UITextField = {
        let view = UITextField()
        view.borderStyle = .roundedRect
        view.backgroundColor = .systemGray6
        view.text = "Password"
        view.textColor = .lightGray
        view.delegate = self
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        view.clearsOnBeginEditing = true
        view.isSecureTextEntry = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.layer.shadowOffset.height = 10
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        return button
    }()
    
    func layout(){
      
      scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
      scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
      scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
      scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
      
      contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
      contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
      contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
      contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
      contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
      
        logoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 120).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
      
        emailTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: -1).isActive = true
        passTextField.rightAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        passTextField.leftAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        passTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button.topAnchor.constraint(equalTo: passTextField.bottomAnchor, constant: 16).isActive = true
        button.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        button.leftAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true

        
    }
    
    @objc private func tapAction() {
    
        let vc = ProfileViewController()

        navigationController?.pushViewController(vc, animated: true)

    }
    
    
    
}

extension LogInViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
}
