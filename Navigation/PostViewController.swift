//
//  PostViewController.swift
//  Navigation
//
//  Created by V SEO on 28.05.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    init(post: Post) {
        super.init(nibName: nil, bundle: nil)
        self.title = post.title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        makeBarItem()
    }
    
    private func makeBarItem() {
        let barItem = UIBarButtonItem(title: "Открыть", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }
    
    @objc
    private func tapAction() {
        let controller = InfoViewController()
        present(controller, animated: true)
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
