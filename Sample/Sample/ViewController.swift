//
//  ViewController.swift
//  Sample
//
//  Created by Diego Cavalcante on 05/05/23.
//

import UIKit
import SnapKit
import UIComponents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let vc = UICLoginViewController()
        present(vc, animated: true)
    }
}

