//
//  HomeVC.swift
//  SwiftUIDemo
//
//  Created by twRick on 2019/6/19.
//  Copyright © 2019 Rick. All rights reserved.
//

import UIKit
import SwiftUI

class HomeVC: UIHostingController<ContentView> {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("HomeVC viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.rootView.tapButton = {
            self.navigationController?.pushViewController(SecVC(), animated: true)
        }
    }
    
}

class SecVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
}
