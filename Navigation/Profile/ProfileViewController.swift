//
//  TestUIviewController.swift
//  Navigation
//
//  Created by V SEO on 10.06.2022.
//

import UIKit
class ProfileViewController: UIViewController {

    private let post: [[Post]] = Post.postView()
    
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
       // tableView.rowHeight = UITableView.automaticDimension
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.identifier)
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: PhotosTableViewCell.identifier)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
    
    private func layout() {
        view.addSubview(tableView)
        navigationController?.navigationBar.isHidden = true
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

extension ProfileViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = ProfileTableHederView()
        if section == 0 { return header } else { return UIView() }

    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let detailVC = PhotosViewController()
        detailVC.setupVC(model: post[indexPath.section][indexPath.row])

        navigationController?.pushViewController(detailVC, animated: true)

    }
}

extension ProfileViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return post.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return [post].count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let photoCell = tableView.dequeueReusableCell(withIdentifier: PhotosTableViewCell.identifier, for: indexPath) as! PhotosTableViewCell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        
        
        var context: UIListContentConfiguration = cell.defaultContentConfiguration()
        context.text = "Photo" //"Секция = \(indexPath.section), ячейка = \(indexPath.row)"
        cell.setupCell(post[indexPath.section][indexPath.row])
        
        var photoContext: UIListContentConfiguration = photoCell.defaultContentConfiguration()
        photoContext.text = "Photos" //"Секция = \(indexPath.section), ячейка = \(indexPath.row)"
        
        photoCell.setupPhotoCell(text:  photoContext.text ?? "default")
        
        if indexPath.section == 0 { return photoCell } else
        { return cell }
        
    }
}
