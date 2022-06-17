//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by V SEO on 14.06.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
   
    private let whiteView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private let postTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "nameLabel"
        label.numberOfLines = 2
        label.font = UIFont.boldSystemFont(ofSize: 24)
        
        return label
    }()
    
    private let postImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .black
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
       // label.backgroundColor = .systemGray4
        label.numberOfLines = 0
        label.text = "descriptionLabel"
        label.textColor = .systemGray
        return label
    }()
    
    private let likesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        //label.backgroundColor = .systemGray4
        label.numberOfLines = 0
        label.text = "descriptionLabel"
        return label
    }()
    
    private let viewsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        //label.backgroundColor = .systemGray4
        label.numberOfLines = 0
        label.text = "descriptionLabel"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(_ model: Post) {
        postTitle.text = model.title
        postImageView.image = UIImage(named: model.image)
        descriptionLabel.text = model.description
        likesLabel.text = "Likes: " + String(model.likes)
        viewsLabel.text = "Views: " + String(model.views)
         
    }
    
    private func layout() {
   
        [whiteView, postTitle, postImageView, descriptionLabel, likesLabel, viewsLabel].forEach { contentView.addSubview($0) }
        
        let viewInset: CGFloat = 12
        let inset: CGFloat = 16
        let screenSize: CGRect = UIWindow().frame
   
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: inset),
            whiteView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            whiteView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            whiteView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -inset)
        ])
        NSLayoutConstraint.activate([
            postTitle.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: inset),
            postTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: inset),
            ])
        
        NSLayoutConstraint.activate([
            postImageView.topAnchor.constraint(equalTo: postTitle.bottomAnchor, constant: viewInset),
            postImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            postImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            postImageView.heightAnchor.constraint(equalToConstant: screenSize.width)
        ])

        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: inset),
            descriptionLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: inset),
            descriptionLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -inset),
        ])

        NSLayoutConstraint.activate([
            likesLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: inset),
            likesLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: inset),
        ])

        NSLayoutConstraint.activate([
            viewsLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: inset),
            viewsLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -inset),
            viewsLabel.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor)
        ])
    }
}




