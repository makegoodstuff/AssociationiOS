//
//  RootComponent+LoggedIn.swift
//  DemoApp
//
//  Created by Ermolay Romanov on 4/28/19.
//  Copyright © 2019 MakeGoodStuff authors All rights reserved.
//

import RIBs

/// The dependencies needed from the parent scope of LoggedIn to provide for the Home scope.
protocol LoggedInDependencyHome: Dependency {

    // TODO: Declare dependencies needed from the parent scope of LoggedIn to provide dependencies
    // for the Home scope.
}

extension LoggedInComponent: HomeDependency { }
