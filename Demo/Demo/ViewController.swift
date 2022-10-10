//
//  ViewController.swift
//  Demo
//
//  Created by williamxie on 2022/10/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
#if DEBUG
        print("Debug")
#endif

#if INTERNAL
        print("INTERNAL")
#endif
        
#if PRODUCTION
        print("PRODUCTION")
#endif
    }


}

