//
//  IntroductionPageViewController.swift
//  IOSDevelopment
//
//  Created by Pedro Feitosa on 17/03/25.
//

import UIKit

public final class IntroductionPageViewController: UIPageViewController {
    
    private var pages: [UIViewController] = []
    
    public override func loadView() {
        super.loadView()
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
}

extension IntroductionPageViewController: UIPageViewControllerDataSource {
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController), index > 0 else {
            return nil
        }
        return pages[index - 1]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController), index < pages.count - 1 else {
            return nil
        }
        return pages[index + 1]
    }
    
    
}

extension IntroductionPageViewController: ViewCode {
    public func buildConstraints() {
        
    }
    
    public func setupHierarchy() {
        
    }
    
    public func setupAdditionalConfigurations() {
        
    }
}
