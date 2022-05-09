//
//  CustomTableViewCell.swift
//  Task9Ptotocol&Generic
//
//  Created by Tymofii (Work) on 17.10.2021.
//

import UIKit

final class CustomTableViewCell: UITableViewCell, ConfigurableCell {
    
   // typealias T = City
            
    // MARK: - Configuration
    
    private enum Configuration {
        static let itemSpacing: CGFloat = 10
        static let imageSize = CGSize(width: 50, height: 50)
        static let imageRadius: CGFloat = 10
        static let numberOfLines = 10
        static let fontSize: CGFloat = 16
    }
    
    // MARK: - UI element
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = Configuration.imageRadius
        image.layer.masksToBounds = true
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: Configuration.fontSize)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var cityStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = Configuration.itemSpacing
        return stackView
    }()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = Configuration.itemSpacing
        return stackView
    }()
    
    // MARK: - callBack
    
    var expandCallBack: (() -> Void)?
    
    // MARK: - initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
     super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupSubview()
        setupConstraint()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Setting up the subview
    
    private func setupSubview() {
        
        cityStackView.addArrangedSubview(image)
        cityStackView.addArrangedSubview(titleLabel)
        
        contentView.addSubview(cityStackView)
    }
    
    // MARK: - Setting up the constraint
    
    private func setupConstraint() {
        cityStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cityStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: Configuration.itemSpacing),
            cityStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -Configuration.itemSpacing),
            cityStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -Configuration.itemSpacing),
            cityStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Configuration.itemSpacing)
        ])
        
        NSLayoutConstraint.activate([
            image.heightAnchor.constraint(equalToConstant: Configuration.imageSize.height),
            image.widthAnchor.constraint(equalToConstant: Configuration.imageSize.width),
        ])
    }
    
    // MARK: - Setting up the custom tableViewCell

    func configure(with item: City) {
        titleLabel.text = item.name
        image.image = UIImage(named: item.image)
    }

    // MARK: - UIAction
    
    @objc private func expandButtonTouched() {
        expandCallBack?()
    }
}

