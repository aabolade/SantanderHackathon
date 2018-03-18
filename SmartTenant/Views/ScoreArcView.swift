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
        
        let color1 = #colorLiteral(red: 0.9692557454, green: 0.3780193627, blue: 0.3833937645, alpha: 1)
        let color2 = #colorLiteral(red: 0.9712932706, green: 0.5180988908, blue: 0.2347417772, alpha: 1)
        let color3 = #colorLiteral(red: 0.9813795686, green: 0.8258206248, blue: 0.1418237686, alpha: 1)
        let color4 = #colorLiteral(red: 0.215732187, green: 0.5660987496, blue: 1, alpha: 1)
        let color5 = #colorLiteral(red: 0.2408531308, green: 0.8611665368, blue: 0.5743200779, alpha: 1)
            
        
        addArcWithColor(color5.cgColor, 0, -36)
        addArcWithColor(color4.cgColor, -36, -72)
        addArcWithColor(color3.cgColor, -72, -108)
        addArcWithColor(color2.cgColor, -108, -144)
        addArcWithColor(color1.cgColor, -144, -180)
        
    }
    
    func addArcWithColor(_ color: CGColor, _ startAngle: CGFloat, _ endAngle: CGFloat) {
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(8.0)
        context?.setStrokeColor(color)
        
        let radianStartAngle = CGFloat(startAngle).toRadians()
        let radianEndAngle = CGFloat(endAngle).toRadians()
        
        context?.addArc(center: CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2 + 50), radius: 110, startAngle: radianStartAngle, endAngle: radianEndAngle, clockwise: true)
        context?.strokePath()
    }
    
    

}

extension CGFloat {
    func toRadians() -> CGFloat {
        return self * CGFloat(M_PI) / 180.0
    }
}



