import Foundation
import SpriteKit

class Stick: SKSpriteNode {
    let lenght = 100
    
    init() {
        super.init(texture: nil, color: .white, size: CGSize(width: 10, height: lenght))
       
        physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 10, height: lenght))
        physicsBody?.affectedByGravity = false
        physicsBody?.mass = 10
        
        
    }
    
    
    func hit(){
        let angle:CGFloat = 45 * .pi / 180
        let rotateLeft = SKAction.rotate(byAngle: -angle, duration: 0.1)
        let rotateRight = SKAction.rotate(byAngle: angle * 2 , duration: 0.1)
        let fadeOut = SKAction.fadeOut(withDuration: 0.2)
        let removeSelf = SKAction.removeFromParent()
        let sequence = SKAction.sequence([rotateLeft,rotateRight,fadeOut,removeSelf])
        run(sequence)
        
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
