//
//  ViewController.swift
//  Chaos
//
//  Created by Takumi Muraishi on 2020/08/07.
//  Copyright © 2020 Takumi Muraishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let drawView = DrawView(frame: self.view.bounds)
        self.view.addSubview(drawView)
    }


}

