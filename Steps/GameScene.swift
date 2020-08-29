//
//  GameScene.swift
//  Steps
//
//  Created by C C on 28/08/2020.
//  Copyright © 2020 C C. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var ball: Ball!
    var blocks = [Block]()
         let arm = Arm()
    
    override func didMove(to view: SKView) {
        setupGame()
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch  = touches.first
        let position  = touch?.location(in: self) as! CGPoint
        handleTouch(position: position)
    
    }
    
    
}


extension GameScene{
    
    func worldSetup(){
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: CGRect(origin: CGPoint(x: 30, y: 30),
                                                              size: CGSize(width: frame.maxX - 60,
                                                                           height: frame.maxY - 60)))
        
    }
    func setupGame(){
        // self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)
        
      worldSetup()
        

        arm.position = CGPoint(x: 0, y: 0)
        
        addChild(arm)
        
//        ball = Ball()
//        ball.position = CGPoint(x: view!.frame.minX + 30,
//                                     y: view!.frame.midY)
//
//        addChild(ball)
//
        

        
    }
    
    
    func handleTouch(position: CGPoint){

        
        let reachAction = SKAction.reach(to: position, rootNode:arm.shoulder, duration: 0.5)
        arm.endEffector.run(reachAction)
        
    }
 
    
    
    
    
    
}
