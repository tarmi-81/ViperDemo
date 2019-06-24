//
//  ViewController.swift
//  Viper Tutorial
//
//  Created by Gmuca, Jozef on 24/06/2019.
//  Copyright © 2019 Gmuca, Jozef. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var surname: UITextField!
    var presenter:Presenter?

    @IBAction func add(_ sender: Any) {
        presenter?.addNewObjectWithData(name: self.name.text!, surname: self.surname.text!)
        self.presentingViewController?.dismiss(animated: true, completion:nil)
    }

    @IBAction func cancel(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)

    }

}

