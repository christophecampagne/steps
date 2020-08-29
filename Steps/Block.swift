//
//  Block.swift
//  Steps
//
//  Created by C C on 28/08/2020.
//  Copyright © 2020 C C. All rights reserved.
//

import Foundation
import SpriteKit

class Block: SKSpriteNode{
    
    var blockNode: SKSpriteNode!
    let blockWidth: CGFloat = 100
    let blockHeight: CGFloat = 10
    let blockCategory: UInt32 = 0x1 << 1
    
    
    init(){
        let blockSize = CGSize(width: blockWidth,
                               height: blockHeight)
        super.init(texture: nil, color: .blue, size: blockSize)
        
    }
    
    
    func setupPhysics(){
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.categoryBitMask = blockCategory
        physicsBody?.affectedByGravity = false
        
    }
    
    func startMoving(){
        let moveLeft = SKAction.moveBy(x: -350, y: 0, duration: 1)
        run(SKAction.repeatForever(moveLeft))
    }
    
    func stopMoving(){
        removeAllActions()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
