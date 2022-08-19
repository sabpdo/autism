//
//  ViewController.swift
//  autismGameStoryboard1
//
//  Created by Sophia Yang on 2022-08-17.
//

import UIKit
import SwiftUI

class SophiaViewController: UIViewController {
    
    @IBSegueAction func segueToSwiftUI(_ coder: NSCoder) -> UIViewController? {
        let rootView = ContentView()
        return UIHostingController(coder: coder, rootView: rootView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

