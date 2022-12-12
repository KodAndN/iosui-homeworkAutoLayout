//
//  PhotosTableViewCell.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 04.12.2022.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    weak var delegate: PhotosTableViewDelegate?
    
    private let photosView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
        $0.isUserInteractionEnabled = false
        
        return $0
    }(UIView())
    
    private let photosLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Photos"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        $0.numberOfLines = 1
        return $0
    }(UILabel())
    
    private var rightArrowImageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(systemName: "arrow.right")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        $0.contentMode = .scaleAspectFit
        $0.sizeToFit()
        $0.clipsToBounds = false
        $0.isUserInteractionEnabled = true
        return $0
    }(UIImageView())
    
    private var stackView: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.axis = .horizontal
        $0.spacing = 8
        $0.layer.cornerRadius = 6
        $0.backgroundColor = .white
        $0.clipsToBounds = true
        $0.layer.borderColor = UIColor.lightGray.cgColor
        return $0
    }(UIStackView())
    
    private var firstImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "img1")
        image.backgroundColor = .systemBackground
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        return image
    }()
    
    private var secondImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "img2")
        image.backgroundColor = .systemBackground
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        return image
    }()
    
    private var thirdImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "img3")
        image.backgroundColor = .systemBackground
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        return image
    }()
    
    private var fourtImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "img4")
        image.backgroundColor = .systemBackground
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        return image
    }()
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
        customizeCell()
        setupGestures()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupGestures() {
        let tapRightArrowGesture = UITapGestureRecognizer(target: self, action: #selector(rightArrowImageAction))
        rightArrowImageView.addGestureRecognizer(tapRightArrowGesture)
    }
    
    @objc func rightArrowImageAction() {
        delegate?.rightArrowImagePressed()
    }
    
    
    private func customizeCell() {
        photosView.layer.cornerRadius = 0
        photosView.layer.borderWidth = 0
        photosView.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupLayout() {
        let firstInset: CGFloat = 12
        let secondInset: CGFloat = 12
        
        [firstImageView, secondImageView, thirdImageView, fourtImageView].forEach { stackView.addArrangedSubview($0) }
        
        [photosView, photosLabel, rightArrowImageView, stackView].forEach { contentView.addSubview($0) }
        
        NSLayoutConstraint.activate([
            
            photosView.topAnchor.constraint(equalTo: contentView.topAnchor),
            photosView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            photosView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            photosView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            photosLabel.topAnchor.constraint(equalTo: photosView.topAnchor, constant: firstInset),
            photosLabel.leadingAnchor.constraint(equalTo: photosView.leadingAnchor, constant: firstInset),
            photosLabel.trailingAnchor.constraint(equalTo: photosView.trailingAnchor, constant: -firstInset),
            
            rightArrowImageView.topAnchor.constraint(equalTo: photosView.topAnchor, constant: firstInset),
            rightArrowImageView.centerYAnchor.constraint(equalTo: photosLabel.centerYAnchor),
            rightArrowImageView.trailingAnchor.constraint(equalTo: photosView.trailingAnchor, constant: -firstInset),
            rightArrowImageView.widthAnchor.constraint(equalToConstant: 24),
            rightArrowImageView.heightAnchor.constraint(equalToConstant: 28),
            
            stackView.topAnchor.constraint(equalTo: photosLabel.bottomAnchor, constant: firstInset),
            stackView.leadingAnchor.constraint(equalTo: photosView.leadingAnchor, constant: firstInset),
            stackView.trailingAnchor.constraint(equalTo: photosView.trailingAnchor, constant: -firstInset),
            stackView.heightAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width - (firstInset * 2 + secondInset * 3)) / 4),
            stackView.bottomAnchor.constraint(equalTo: photosView.bottomAnchor, constant: -firstInset)
        ])
        
    }
    
}

