//
//  IntroductionTableViewCell.swift
//  IOSDevelopment
//
//  Created by Pedro Feitosa on 20/03/25.
//

import UIKit

extension IntroductionTableViewCell {
    static var identifier: String {
        return String(describing: IntroductionView.self)
    }
}

class IntroductionTableViewCell: UITableViewCell {
    
    private lazy var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "teste"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.setupView()
    }
    
}

extension IntroductionTableViewCell: ViewCode {
    func buildConstraints() {
        NSLayoutConstraint.activate([
            self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    func setupHierarchy() {
        self.addSubview(titleLabel)
    }
    
    func setupAdditionalConfigurations() {
        
    }
    
    
}
