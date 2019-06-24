//
//  Router.swift
//  Viper Tutorial
//
//  Created by Gmuca, Jozef on 24/06/2019.
//  Copyright © 2019 Gmuca, Jozef. All rights reserved.
//

import Foundation
import UIKit
class Router {

    let vc:TableViewController = TableViewController()
    let presenter = Presenter()
    let interactor = Interactor()
    var navigationController: UINavigationController?

    init() {
        vc.presenter = presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = self
        interactor.presenter = presenter
        navigationController = UINavigationController(rootViewController: vc)
    }
    func openAddView() {

        let storyBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let addVC:ViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        addVC.presenter = self.presenter

        vc.present(addVC, animated: true, completion: nil)
    }
}
