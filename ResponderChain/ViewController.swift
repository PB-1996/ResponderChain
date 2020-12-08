//
//  ViewController.swift
//  ResponderChain
//
//  Created by Pavel Borisevich on 12/8/20.
//

import UIKit

class VC1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2")
        
        navigationController?.pushViewController(vc2, animated: false)
    }
    
    @objc func method1() {
        print(#function)
    }
    
}

class VC2: UIViewController {

    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        button.addTarget(nil, action: #selector(VC1.method1), for: .touchUpInside)
    }
    
}
