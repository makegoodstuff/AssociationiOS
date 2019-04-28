//
//  RootComponent+LoggedIn.swift
//  DemoApp
//
//  Created by Ermolay Romanov on 4/28/19.
//  Copyright © 2019 MakeGoodStuff authors All rights reserved.
//

import RIBs

import ChangePassword

/// The dependencies needed from the parent scope of Root to provide for the ChangePassword scope.
protocol HomeDependencyChangePassword: Dependency {

    // TODO: Declare dependencies needed from the parent scope of Home to provide dependencies
    // for the Home scope.
}

extension HomeComponent: ChangePasswordDependency { }
