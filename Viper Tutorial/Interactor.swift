//
//  Interactor.swift
//  Viper Tutorial
//
//  Created by Gmuca, Jozef on 24/06/2019.
//  Copyright © 2019 Gmuca, Jozef. All rights reserved.
//

import Foundation

protocol InteractorProtocolInput {
    func addNewPersonWithData(name:String, surname:String)
}
protocol InteractorProtocolOutput {
    func updateObjects(objects:[String])
}

class Interactor {
    var presenter:Presenter?
    let dataBase:DataStore?

    init() {
        dataBase = DataStore()
    }
    func addNewPersonWithData(name:String, surname:String) {

        if (name != ""  && surname != "") {
            let person = Person()
            person.name = name
            person.surname = surname
            if let persons = dataBase!.persons{
                dataBase?.persons?.append(person)
            }else{
                dataBase?.persons = [Person]()
                dataBase?.persons?.append(person)
            }
            self.updateList()
        }
    }
    func updateList() {

        var arrayPersons = [String]()
        for person in dataBase!.persons! {

            arrayPersons.append(person.name! + " " + person.surname!)
        }

        presenter!.updateObjects(objects: arrayPersons)
    }
}
