//
//  PostViewController.swift
//  Navigation
//
//  Created by V SEO on 28.05.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    let cellForPost = PostTableViewCell()
    
    
    init(post: [Post]) {
        super.init(nibName: nil, bundle: nil)
        //var post = Post.postView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(cellForPost)
        view.backgroundColor = .purple
        navigationController?.navigationBar.isHidden = false
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        navigationController?.navigationBar.isHidden = true
    }

}
