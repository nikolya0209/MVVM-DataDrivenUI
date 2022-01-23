//
//  TestView + Extension.swift
//  MVVM+DataDrivenUI
//
//  Created by MacBookPro on 23.01.2022.
//

import UIKit

extension TestView {
    func makeImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 2),
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        return imageView
    }
    
    func makeActivityIndicator() -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.color = .gray
        activityIndicator.hidesWhenStopped = true
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        addSubview(activityIndicator)
        NSLayoutConstraint.activate([
            activityIndicator.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 5),
            activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        return activityIndicator
    }
    
    func makeTitleLabel() -> UILabel {
        let titleLabel = UILabel()
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: imageView.bottomAnchor, multiplier: 1),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        return titleLabel
    }
    
    func makeDescriptionLabel() -> UILabel {
        let descriptionLabel = UILabel()
        descriptionLabel.font = UIFont.boldSystemFont(ofSize: 14)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 1),
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        return descriptionLabel
    }
    
    func makeLabel(size: CGFloat) -> UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: size)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        
        return label
    }
    
}
