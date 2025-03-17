//
//  AppCoordinator.swift
//  IOSDevelopment
//
//  Created by Pedro Feitosa on 17/03/25.
//
import UIKit

public protocol Navigating {
    func pushViewController(_ viewController: UIViewController, animated: Bool)
    func popViewController(animated: Bool)
}

public final class AppCoordinator: Navigating {
    
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func pushViewController(_ viewController: UIViewController, animated: Bool) {
        self.navigationController?.pushViewController(viewController, animated: animated)
    }
    
    public func popViewController(animated: Bool) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func start() {
        let topMenuViewController = TopMenuViewController()
        navigationController?.setViewControllers([topMenuViewController], animated: false)
    }
    
}
