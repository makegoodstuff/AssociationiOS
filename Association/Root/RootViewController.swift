//
//  RootViewController.swift
//  DemoApp
//
//  Created by Ermolay Romanov on 4/28/19.
//  Copyright © 2019 MakeGoodStuff authors All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol RootPresentableListener: class {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class RootViewController: UIViewController, RootPresentable, RootViewControllable {

    weak var listener: RootPresentableListener?
}
