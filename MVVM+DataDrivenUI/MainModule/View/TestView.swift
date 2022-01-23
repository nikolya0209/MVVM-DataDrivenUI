//
//  TestView.swift
//  MVVM+DataDrivenUI
//
//  Created by MacBookPro on 23.01.2022.
//
import Foundation
import UIKit

class TestView: UIView {
    
    var viewData: ViewData = .initial {
        didSet {
            setNeedsLayout()
        }
    }
    
    lazy var imageView = makeImageView()
    lazy var activityIndicator = makeActivityIndicator()
    lazy var titleLabel = makeTitleLabel()
    lazy var descriptionLabel = makeDescriptionLabel()

    override func layoutSubviews() {
        super.layoutSubviews()
        switch viewData {
        case .initial:
            update(viewData: nil, isHidden: true)
        case .loading(let loading):
            break
        case .success(let success):
            break
        case .failure(let failure):
            break
        }
    }
    
    private func update(viewData: ViewData.Data?, isHidden: Bool) {
        imageView.image = UIImage(named: viewData?.icon ?? "")
        titleLabel.text = viewData?.title
        descriptionLabel.text = viewData?.description
        titleLabel.isHidden = isHidden
        descriptionLabel.isHidden = isHidden
        imageView.isHidden = isHidden
    }
    
}
