//
//  PostCell.swift
//  Woof&Wags
//
//  Created by Mohamed Atallah on 25/03/2023.
//

import UIKit


class PostCell: UITableViewCell, Cell {
    
//    let stackView = UIStackView()
    let userImageView = UIImageView()
    let usernameLabel = WWTitleLabel(textAlignment: .left, fontSize: 20)
    let publishDateLabel = WWSecondaryLabel(fontSize: 14)
    let postTextLabel = WWBodyLabel(textAlignment: .left)
    let postImageView = UIImageView()
    let likeImageView = UIImageView()
    let likeLabel = WWTitleLabel(textAlignment: .left, fontSize: 16)
    let commentButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set() {
        usernameLabel.text = "Mohamed"
        publishDateLabel.text = "12/4/2000"
        postTextLabel.text = "postText postText postText postText postText postText postText postText postText postText postText "
        postImageView.image = UIImage(systemName: "person.3.fill")
        userImageView.image = UIImage(systemName: "person.fill")
        likeLabel.text = "25"
        commentButton.setTitle("Comments", for: .normal)
        likeImageView.image = UIImage(systemName: "hand.thumbsup")
    }
    
    private func configure() {
        let postViews: [UIView] = [userImageView, usernameLabel, publishDateLabel, postTextLabel,
                                   postImageView, likeLabel, likeImageView, commentButton]
        for postView in postViews {
            addSubview(postView)
            postView.translatesAutoresizingMaskIntoConstraints = false
        }

        self.layer.cornerRadius = 20
        
                
        #warning("delete")
        self.backgroundColor = .secondaryLabel

        
        let padding: CGFloat = 20
        let textImagePadding: CGFloat = 12
        
        NSLayoutConstraint.activate([
            userImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: padding),
            userImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            userImageView.heightAnchor.constraint(equalToConstant: 80),
            userImageView.widthAnchor.constraint(equalToConstant: 80),
            
            usernameLabel.topAnchor.constraint(equalTo: userImageView.topAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: textImagePadding),
            usernameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 40),
            
            publishDateLabel.centerYAnchor.constraint(equalTo: userImageView.centerYAnchor),
            publishDateLabel.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: textImagePadding),
            publishDateLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            publishDateLabel.heightAnchor.constraint(equalToConstant: 20),
            
            postTextLabel.topAnchor.constraint(equalTo: userImageView.bottomAnchor, constant: 8),
            postTextLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            postTextLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            postTextLabel.heightAnchor.constraint(equalToConstant: 50),
            
            postImageView.topAnchor.constraint(equalTo: postTextLabel.bottomAnchor, constant: 8),
            postImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            postImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            postImageView.heightAnchor.constraint(equalToConstant: 300),
            
            likeImageView.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 16),
            likeImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            likeImageView.heightAnchor.constraint(equalToConstant: 20),
            likeImageView.widthAnchor.constraint(equalToConstant: 20),
            
            likeLabel.centerYAnchor.constraint(equalTo: likeImageView.centerYAnchor),
            likeLabel.leadingAnchor.constraint(equalTo: likeImageView.trailingAnchor, constant: 8),
            likeLabel.heightAnchor.constraint(equalToConstant: 50),
            likeLabel.widthAnchor.constraint(equalToConstant: 50),
            
            commentButton.centerYAnchor.constraint(equalTo: likeLabel.centerYAnchor),
            commentButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            commentButton.heightAnchor.constraint(equalToConstant: 20),
            commentButton.widthAnchor.constraint(equalToConstant: 100),
            
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20)
            
        ])
    }
    
}
