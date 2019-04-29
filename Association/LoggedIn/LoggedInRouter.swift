//
//  LoggedInRouter.swift
//  DemoApp
//
//  Created by Ermolay Romanov on 4/28/19.
//  Copyright © 2019 MakeGoodStuff authors All rights reserved.
//

import RIBs

protocol LoggedInInteractable: Interactable {
    var router: LoggedInRouting? { get set }
    var listener: LoggedInListener? { get set }
}

protocol LoggedInViewControllable: ViewControllable {
    func present(viewController: ViewControllable)
    func dismiss(viewController: ViewControllable)
}

final class LoggedInRouter: Router<LoggedInInteractable>, LoggedInRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    init(interactor: LoggedInInteractable, 
        viewController: LoggedInViewControllable,
        homeBuilder: HomeBuildable) {
        self.viewController = viewController
        self.homeBuilder = homeBuilder
        super.init(interactor: interactor)
        interactor.router = self
    }

    func cleanupViews() {
        // TODO: Since this router does not own its view, it needs to cleanup the views
        // it may have added to the view hierarchy, when its interactor is deactivated.
        if let current = currentChild {
            viewController.dismiss(current)
        }
    }

    // MARK: LoggedInRouting

    func routeToHome() {
        let home = homeBuilder.build(withListener: interactor)
        attachChild(home)
        viewController.present(home.viewControllable)
        currentChild = home
    }

    // MARK: - Private

    private let viewController: LoggedInViewControllable
    private let homeBuilder: HomeBuildable

    private var currentChild: ViewableRouting?
}
