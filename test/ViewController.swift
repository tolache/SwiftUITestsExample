//
//  ViewController.swift
//  test
//
//  Created by madi on 3/30/19.
//  Copyright © 2019 com.madi.barcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var typeTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        helloLabel.text = ""
        typeTextField.text = ""
    }

    @IBAction func pasteTapped(_ sender: Any) {
        helloLabel.text = typeTextField.text
        typeTextField.text = ""
    }
    
}

