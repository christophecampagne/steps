//
//  Ramp.swift
//  Steps
//
//  Created by C C on 29/08/2020.
//  Copyright © 2020 C C. All rights reserved.
//

import Foundation
import SpriteKit

class Ramp: SKShapeNode {
    
    let startAngleDegree:CGFloat = 10
    let endAngleDegree:CGFloat = -100
    let radius:CGFloat = 20
    
    
    
    override init(){
       
        let startAngle = startAngleDegree * .pi / 180
        let endAngle = endAngleDegree * .pi / 180
        let rampPath = UIBezierPath()
        
        rampPath.addArc(withCenter: CGPoint(x: 20, y: 20), radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        rampPath.lineWidth = 20
        super.init()
        let path = rampPath.cgPath
        addChild(SKShapeNode(path:path))
        physicsBody = SKPhysicsBody(edgeChainFrom: path)
        strokeColor = .white
    
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
