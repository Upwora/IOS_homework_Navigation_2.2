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

    }


}
