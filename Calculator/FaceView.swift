//
//  FaceView.swift
//  Calculator
//
//  Created by Max xie on 2017/4/7.
//  Copyright © 2017年 Max xie. All rights reserved.
//

import UIKit

class FaceView: UIView
{

    override func draw(_ rect: CGRect) {
        
        let skullRadius = min(bounds.size.width, bounds.size.height) / 2
        let skullCenter = center
        let path = UIBezierPath(arcCenter: skullCenter, radius: skullRadius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        UIColor.blue.set()
        path.stroke()
    }

}
