//
//  IntroductionView.swift
//  IOSDevelopment
//
//  Created by Pedro Feitosa on 20/03/25.
//

import UIKit



class IntroductionView: UIView {
    
    struct IntroductionViewDTO {
        var buttonName: String
    }
    
    //MARK: - Properties
    lazy var introductionTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(IntroductionTableViewCell.self, forCellReuseIdentifier: IntroductionTableViewCell.identifier)
        tableView.bounces = false
        return tableView
    }()
    
    //MARK: - Init
    
    init(delegate: UITableViewDelegate & UITableViewDataSource, viewDTO: IntroductionViewDTO? = nil) {
        super.init(frame: .zero)
        self.introductionTableView.delegate = delegate
        self.introductionTableView.dataSource = delegate
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    public func setupDTO(_ dto: IntroductionViewDTO) {
        
    }
    
}

//MARK: - ViewCode
extension IntroductionView: ViewCode {
    func buildConstraints() {
        NSLayoutConstraint.activate([
            self.introductionTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 64),
            self.introductionTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -64),
            self.introductionTableView.heightAnchor.constraint(equalToConstant: 192),
            self.introductionTableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 100)
        ])
    }
    
    func setupHierarchy() {
        self.addSubview(introductionTableView)
        
    }
    
    func setupAdditionalConfigurations() {
        self.backgroundColor = .blue
        self.introductionTableView.backgroundColor = .purple
    }
}
