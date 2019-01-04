//
//  ShapeView.swift
//  UXtestApp
//
//  Created by David Perez on 1/3/19.
//  Copyright © 2019 David Perez P. All rights reserved.
//

import Foundation

//
//  ShapeView.swift
//  UI exp
//
//  Created by David Perez on 9/19/18.
//  Copyright © 2018 David Perez P. All rights reserved.
//

import UIKit

class ShapeView: UIView {
    
    var shape: UIBezierPath!
    
    var color: UIColor? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.layer.cornerRadius = 5
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
    
        let maxX = rect.maxX
        let maxY = rect.maxY
        let midY = rect.midY
        let maxX10 = maxX * 0.10
        let maxX9 = maxX * 0.9
        context.beginPath()
        context.move(to: CGPoint(x: maxX10 , y: midY))
        context.addCurve(to:
                        CGPoint(x: maxX * 0.12 ,y: maxY * 0.4),
                        control1: CGPoint(x: maxX10,y: maxY * 0.4),
                        control2: CGPoint(x: maxX10 ,y: maxY * 0.4)
                        )
        context.addCurve(to:
                        CGPoint(x: maxX9 ,y: maxY * 0.2),
                        control1: CGPoint(x: maxX9 ,y: maxY * 0.2),
                        control2: CGPoint(x: maxX9 ,y: maxY * 0.1)
                        )
        context.addCurve(to:
                         CGPoint(x: maxX9 ,y: maxY * 0.8),
                         control1: CGPoint(x: maxX9 ,y: maxY * 0.8),
                         control2: CGPoint(x: maxX9 ,y: maxY * 0.8)
                        )
        context.addCurve(to:
                          CGPoint(x: maxX * 0.12 ,y: maxY * 0.6),
                          control1: CGPoint(x: maxX9,y: maxY * 0.95),
                          control2: CGPoint(x: maxX * 0.95 ,y: maxY * 0.9)
                        )
        context.addCurve(to:
                        CGPoint(x: maxX10 ,y: midY),
                         control1: CGPoint(x: maxX10,y: maxY * 0.6),
                         control2: CGPoint(x: maxX10 ,y: maxY * 0.6)
                       )
        
        context.closePath()
        
        context.setFillColor((color?.cgColor)!)
        context.fillPath()
    }
    
    
}
