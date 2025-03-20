//
//  ViewCodeProtocol.swift
//  IOSDevelopment
//
//  Created by Pedro Feitosa on 20/03/25.
//

public protocol ViewCode {
    func setupView()
    func buildConstraints()
    func setupHierarchy()
    func setupAdditionalConfigurations()
}

public extension ViewCode {
    func setupView() {
        buildConstraints()
        setupHierarchy()
        setupAdditionalConfigurations()
    }
    
}

