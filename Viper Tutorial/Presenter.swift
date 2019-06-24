//
//  Presenter.swift
//  Viper Tutorial
//
//  Created by Gmuca, Jozef on 24/06/2019.
//  Copyright © 2019 Gmuca, Jozef. All rights reserved.
//

import UIKit

class Presenter: InteractorProtocolOutput {
    var view:TableViewController?
    var interactor:Interactor?
    var router:Router?
    init() {

    }
    func updateObjects(objects: [String]) {
            view!.setListWithObjects(objects: objects)
    }

    func addNewObject() {

        router!.openAddView()
    }

    func addNewObjectWithData(name n:String, surname s:String) {
        interactor!.addNewPersonWithData(name: n, surname: s)
    }
}
