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
    
    var x1 = 190.0
    var y1 = 250.0
    var x2 = 17.0
    var y2 = 550.0
    var x3 = 363.0
    var y3 = 550.0
    var godArray: [Double] =  []
   
    override func draw(_ rect: CGRect) {
        
    let triangle = UIBezierPath()
        
    godArray.append(x1)
    godArray.append(y1)
    godArray.append(x2)
    godArray.append(y2)
    godArray.append(x3)
    godArray.append(y3) // godArray[0]~godArray[5]はOriginTriangle
        
    for count in 0...5 { // count: 三角形を何回小さくして描画を繰り返すか
        triangle.move(to: CGPoint(x: x1, y: y1))
        triangle.addLine(to:CGPoint(x: x2, y: y2))
        triangle.addLine(to:CGPoint(x: x3, y: y3))
        triangle.addLine(to:CGPoint(x: x1, y: y1))
        triangle.close()
        
        x2 = (x1+x2)/2
        x3 = (x1+x3)/2
        y2 = (y1+y2)/2
        y3 = (y1+y3)/2
        //godArray.append(x1)
        //godArray.append(x2)
    }
    
    // 内側の色
    UIColor(red: 1, green: 0, blue: 0, alpha: 0.2).setFill()
    // 内側を塗りつぶす
    triangle.fill()
    // 線の色
    UIColor(red: 1, green: 0, blue: 0, alpha: 1.0).setStroke()
    // 線の太さ
    triangle.lineWidth = 2.0
    // 線を塗りつぶす
    triangle.stroke()
        
       
        print(godArray[1])
        
   }

}
