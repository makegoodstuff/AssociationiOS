//
//  HomeRouter.swift
//  DemoApp
//
//  Created by Ermolay Romanov on 4/28/19.
//  Copyright © 2019 MakeGoodStuff authors All rights reserved.
//

import RIBs
import AssociationShared

protocol HomeInteractable: Interactable, ChangePasswordListener {
    var router: HomeRouting? { get set }
    var listener: HomeListener? { get set }
}

protocol HomeViewControllable: ViewControllable {
    func present(viewController: ViewControllable)
    func dismiss(viewController: ViewControllable)
}

final class HomeRouter: ViewableRouter<HomeInteractable, HomeViewControllable>, HomeRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(
        interactor: HomeInteractable, 
        viewController: HomeViewControllable,
        changePasswordBuilder: ChangePasswordBuildable
    ) {
        self.changePasswordBuilder = changePasswordBuilder
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }


    // MARK: HomeRouting

    func goToPassword() {
        if let attached = current {
            detachChild(attached)
            viewController.dismiss(attached.viewController)
        }

        let changePassword = changePasswordBuilder.build(withListener: interactor, 
                                                        nativePresentable: ChangePasswordViewController())
        attachChild(changePassword)
        current = changePassword
    }


    // MARK: - Private

    private let changePasswordBuilder: ChangePasswordBuildable
    
    private var current: Routing?
}
