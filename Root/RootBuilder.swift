//
//  RootBuilder.swift
//  DemoApp
//
//  Created by Ermolay Romanov on 4/28/19.
//  Copyright © 2019 MakeGoodStuff authors All rights reserved.
//

import RIBs

protocol RootDependency: Dependency, RootDependencyLoggedIn {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class RootComponent: Component<RootDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol RootBuildable: Buildable {
    func build(withListener listener: RootListener) -> RootRouting
}

final class RootBuilder: Builder<RootDependency>, RootBuildable {

    override init(dependency: RootDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: RootListener) -> RootRouting {
        let component = RootComponent(dependency: dependency)
        let viewController = RootViewController()
        let interactor = RootInteractor(presenter: viewController)
        interactor.listener = listener
        return RootRouter(interactor: interactor, viewController: viewController)
    }
}
