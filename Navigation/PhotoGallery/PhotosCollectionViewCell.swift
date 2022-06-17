//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by V SEO on 16.06.2022.
//

import UIKit

var galleryFile: [String] = ["5-The_School_of_Athens__by_Raffaello_Sanzio_da_Urbino",
                             "1024px-Leonardo_da_vinci_-_La_scapigliata",
                             "1280px-Da_Vinci_Vitruve_Luc_Viatour_(cropped)",
                             "1920px-Leonardo_da_Vinci_-_Plan_of_Imola_-_Google_Art_Project",
                             "518161",
                             "3038047-inline-i-1-these-photos-bring-the-otherworldly",
                             "AdobeStock_204091485",
                             "black_musician",
                             "Figure-1-follower-of-Bruegel",
                             "Ginevra-de-Benci-oil-panel-Leonardo-da",
                             "Lady-Ermine-oil-panel-Leonardo-da-Vinci",
                             "Last-Supper-wall-painting-restoration-Leonardo-da-1999",
                             "Leonardo_da_Vinci_(attrib)-_la_Belle_Ferroniere",
                             "low-angle-shot-renaissance-paintings-sculptures-ceiling-193938674"]

class PhotosCollectionViewCell: UICollectionViewCell {
    
    private let number = 10
    
    lazy var newImageView: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "logo")
        image.clipsToBounds = true
        image.backgroundColor = .green
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func doFirst(color: UIColor) {
        customizeCell(color: color)
        contentView.addSubview(newImageView)
    }
    
    func setImage(index: Int) {
        customizeCell(color: UIColor.orange)
        
        NSLayoutConstraint.activate([
            newImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            newImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            newImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            newImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])

        print(galleryFile[index])
    }
    
    private func customizeCell(color: UIColor) {
        contentView.backgroundColor = color
        contentView.layer.cornerRadius = 15
    }
    
}



