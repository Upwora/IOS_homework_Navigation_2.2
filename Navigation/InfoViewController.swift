//
//  MainTabBar.swift
//  Navigation
//
//  Created by V SEO on 28.05.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(hasBeenTapped), for: .touchUpInside)
        button.setTitle("Выход", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow

        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 45),
            button.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    @objc
    private func hasBeenTapped() {
        let alert = UIAlertController(title: "Выход", message: "Вы точно хотите выйти?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Выйти", style: .default) { _ in
            self.dismiss(animated: true)
            print("Message sent")
        }
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .destructive){ _ in
            print("Message dismis")
            self.dismiss(animated: true)
            
                    }
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
