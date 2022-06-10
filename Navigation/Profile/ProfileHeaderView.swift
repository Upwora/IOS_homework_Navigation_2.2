//
//  TestUIviewController.swift
//  Navigation
//
//  Created by V SEO on 10.06.2022.
//

import UIKit

class TestUIview: UIView {

    var avatarImageView: UIImageView = {
        let view = UIImageView()//frame: CGRect(x: 0, y: 0, width: 100, height: 100))
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

}
