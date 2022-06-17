//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by V SEO on 15.06.2022.
//

import UIKit

protocol CellActionsDelegate: AnyObject {
    func Action()
}

class PhotosTableViewCell: UITableViewCell {
let gallery = PhotosViewController()
    
    weak var delegate: CellActionsDelegate?
    
    private let photoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentMode = .scaleAspectFit
        button.tintColor = .black
        button.setBackgroundImage(UIImage(systemName: "arrow.right.square"), for: .normal)
        button.addTarget(self, action: #selector(tapGalleryButtonAction), for: .touchUpInside)
        return button
    }()
    
    private let photoLabel: UILabel = {
        let label = UILabel()//frame: CGRect(x: 0, y: 0, width: 300, height: 900))
        label.translatesAutoresizingMaskIntoConstraints = false
        //label.backgroundColor = .orange
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    private let postImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode  = .scaleAspectFill
        imageView.layer.cornerRadius = 6
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let postImageSecond: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .green
      
        imageView.contentMode  = .scaleAspectFill
        imageView.layer.cornerRadius = 6
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let postImageThird: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode  = .scaleAspectFill
        imageView.layer.cornerRadius = 6
        imageView.clipsToBounds = true
        return imageView
    }()
    private let postImageFifth: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode  = .scaleAspectFill
        imageView.layer.cornerRadius = 6
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
        
    }
    
    @objc private func tapGalleryButtonAction() {
    
        delegate?.Action()
        
    }
    
    func setupPhotoCell(text: String) {
        photoLabel.text = text
        postImageView.image = UIImage(named: "photo-1599894019794-50339c9ad89c")
        postImageSecond.image = UIImage(named: "5-The_School_of_Athens__by_Raffaello_Sanzio_da_Urbino")
        postImageThird.image = UIImage(named: "Figure-1-follower-of-Bruegel")
        postImageFifth.image = UIImage(named: "Ginevra-de-Benci-oil-panel-Leonardo-da")
        contentView.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
    private func layout() {
        
        let screenSize: CGRect = UIWindow().frame
        let offset: CGFloat = 8
        let screenOffset: CGFloat = 12
        let width = (screenSize.width - (2 * screenOffset + 3 * offset)) / 4
        
        addSubview(photoLabel)
        addSubview(photoButton)
        addSubview(postImageView)
        addSubview(postImageSecond)
        addSubview(postImageThird)
        addSubview(postImageFifth)
        [photoLabel, photoButton, postImageView, postImageSecond, postImageThird, postImageFifth].forEach { contentView.addSubview($0) }
        
        NSLayoutConstraint.activate([
            photoLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: screenOffset),
            photoLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: screenOffset),
        
            photoButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: screenOffset),
            photoButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -screenOffset),
            photoButton.bottomAnchor.constraint(equalTo: postImageView.topAnchor, constant: -screenOffset),
            
            postImageView.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: offset ),
            postImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: screenOffset),
            postImageView.rightAnchor.constraint(equalTo: postImageSecond.leftAnchor, constant: -offset),
            postImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            postImageView.widthAnchor.constraint(equalToConstant: width),
            postImageView.heightAnchor.constraint(equalToConstant: width),

            postImageSecond.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: offset),
            postImageSecond.leftAnchor.constraint(equalTo: postImageView.rightAnchor, constant: offset),
            postImageSecond.rightAnchor.constraint(equalTo: postImageThird.leftAnchor, constant: -offset),
            postImageSecond.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            postImageSecond.widthAnchor.constraint(equalToConstant: width),
            postImageSecond.heightAnchor.constraint(equalToConstant: width),
            
            postImageThird.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: offset),
            postImageThird.leftAnchor.constraint(equalTo: postImageSecond.rightAnchor, constant: offset),
            postImageThird.rightAnchor.constraint(equalTo: postImageFifth.leftAnchor,constant: -offset),
            postImageThird.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            postImageThird.widthAnchor.constraint(equalToConstant: width),
            postImageThird.heightAnchor.constraint(equalToConstant: width),
            
            postImageFifth.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: offset),
            postImageFifth.leftAnchor.constraint(equalTo: postImageThird.rightAnchor, constant: offset),
            postImageFifth.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -offset),
            postImageFifth.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            postImageFifth.widthAnchor.constraint(equalToConstant: width),
            postImageFifth.heightAnchor.constraint(equalToConstant: width),
        ])
    }

}
