//
//  IntroductionViewController.swift
//  IOSDevelopment
//
//  Created by Pedro Feitosa on 17/03/25.
//

import UIKit

public final class IntroductionViewController: UIViewController {
    
    //MARK: - Properties
    lazy var introductionView = IntroductionView(delegate: self)
    
    //MARK: - Lifecycle
    public override func loadView() {
        super.loadView()
        self.view = introductionView
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Methods
    private func setupViewConstraints() {
        NSLayoutConstraint.activate([
            self.introductionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.introductionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.introductionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            self.introductionView.topAnchor.constraint(equalTo: self.view.topAnchor)
        ])
    }
}

extension IntroductionViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(64)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: IntroductionTableViewCell.identifier) as? IntroductionTableViewCell else { return UITableViewCell() }
        return cell
    }
    
    
}
