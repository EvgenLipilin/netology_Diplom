//
//  FollowerCellTableViewCell.swift
//  Course2FinalTask
//
//  Created by Евгений on 12.08.2020.
//  Copyright © 2020 e-Legion. All rights reserved.
//

import UIKit
import Kingfisher


let identifier = "FollowersCell"

class FollowersCell: UITableViewCell {
    //    MARK: - Pricate Properties
    private var avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 27
        return imageView
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 17)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createCell(user: User) {
        
        let url = URL(string: user.avatar)
        avatarImageView.kf.setImage(with: url)
        nameLabel.text = user.username
    }
    
    private func configureUI() {
        addSubview(avatarImageView)
        addSubview(nameLabel)
        
        let constraints = [avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
                           avatarImageView.topAnchor.constraint(equalTo: self.topAnchor),
                           avatarImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                           avatarImageView.widthAnchor.constraint(equalTo: avatarImageView.heightAnchor),
                           
                           nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
                           nameLabel.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor)]
        
        NSLayoutConstraint.activate(constraints)
    }
}
