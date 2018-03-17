//
//  ScoreArcView.swift
//  SmartTenant
//
//  Created by Leke Abolade on 17/03/2018.
//  Copyright © 2018 Leke Abolade. All rights reserved.
//

import UIKit

class ScoreArcView: UIView {
    
    var path: UIBezierPath!

    override func draw(_ rect: CGRect) {
        
        let colour1 = #colorLiteral(red: 0.9692557454, green: 0.3780193627, blue: 0.3833937645, alpha: 1)
        let color2 = #colorLiteral(red: 0.9712932706, green: 0.5180988908, blue: 0.2347417772, alpha: 1)
        let color3 =
        let color4 =
        let color5 =
            
        
        addArcWithColor(UIColor.blue.cgColor, 0, -36)
        addArcWithColor(UIColor.red.cgColor, -36, -72)
        addArcWithColor(UIColor.green.cgColor, -72, -108)
        addArcWithColor(UIColor.purple.cgColor, -108, -144)
        addArcWithColor(UIColor.yellow.cgColor, -144, -180)
        
    }
    
    func addArcWithColor(_ color: CGColor, _ startAngle: CGFloat, _ endAngle: CGFloat) {
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(4.0)
        context?.setStrokeColor(color)
        
        let radianStartAngle = CGFloat(startAngle).toRadians()
        let radianEndAngle = CGFloat(endAngle).toRadians()
        
        context?.addArc(center: CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2), radius: 100, startAngle: radianStartAngle, endAngle: radianEndAngle, clockwise: true)
        context?.strokePath()
    }
    
    

}

extension CGFloat {
    func toRadians() -> CGFloat {
        return self * CGFloat(M_PI) / 180.0
    }
}



