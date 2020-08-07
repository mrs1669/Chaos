//
//  DrawView.swift
//  Chaos
//
//  Created by Takumi Muraishi on 2020/08/07.
//  Copyright © 2020 Takumi Muraishi. All rights reserved.
//

import UIKit

class DrawView: UIView {

   override init(frame: CGRect) {
       super.init(frame: frame);
       self.backgroundColor = UIColor.clear;
   }
   
   required init?(coder aDecoder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
   
   override func draw(_ rect: CGRect) {
       
       // ここにUIBezierPathを記述する
       
   }

}
