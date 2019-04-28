//
//  RootComponent+LoggedIn.swift
//  DemoApp
//
//  Created by Ermolay Romanov on 4/28/19.
//  Copyright © 2019 MakeGoodStuff authors All rights reserved.
//

import RIBs

/// The dependencies needed from the parent scope of Root to provide for the LoggedIn scope.
protocol RootDependencyLoggedIn: Dependency {

    // TODO: Declare dependencies needed from the parent scope of Root to provide dependencies
    // for the LoggedIn scope.
}

extension RootComponent: LoggedInDependency {

    var loggedInViewController: LoggedInViewControllable {
        return rootViewController
    }
}
