//
//  AppComponent.swift
//  DemoApp
//
//  Created by Ermolay Romanov on 4/28/19.
//  Copyright © 2019 MakeGoodStuff authors All rights reserved.
//
import RIBs

class AppComponent: Component<EmptyDependency>, RootDependency {

    init() {
        super.init(dependency: EmptyComponent())
    }
}
