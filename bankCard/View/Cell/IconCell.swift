//
//  IconCell.swift
//  bankCard
//
//  Created by Egor on 02.10.2024.
//

import UIKit

class IconCell: UICollectionViewCell {
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 44).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        imageView.layer.opacity = 0.2
        
        return imageView
        
    }()
    
    private lazy var checkImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(systemName: "checkmark")
        image.tintColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.widthAnchor.constraint(equalToConstant: 24).isActive = true
        image.heightAnchor.constraint(equalToConstant: 24).isActive = true
        image.isHidden = true
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    func setIcon(icon: UIImage) {
        imageView.image = icon
        self.addSubview(imageView)
        self.addSubview(checkImage)
        
        self.backgroundColor = UIColor(hex: "#1F1F1FFF")
        self.layer.cornerRadius = 12
        self.clipsToBounds = true
        
        
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: -3),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 6),
            checkImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            checkImage.centerYAnchor.constraint(equalTo: self.centerYAnchor)

        ])
    }
    func selectItem(){
        checkImage.isHidden = false
    }
    
    func deselectItem(){
        checkImage.isHidden = true
    }
}
