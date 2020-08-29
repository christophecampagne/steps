import SpriteKit

class Ball: SKSpriteNode {
    
    private let radius:CGFloat = 10
   var node: SKShapeNode!
    init() {
        super.init(texture: nil, color: .clear, size: CGSize(width: radius, height: radius))
        node = SKShapeNode(circleOfRadius: radius)
        node.fillColor = .white
        physicsBody = SKPhysicsBody(circleOfRadius: radius)
        physicsBody?.mass = 1
        addChild(node)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func jump(){
        
        physicsBody?.applyAngularImpulse(-90)
        
    }
    
    
  
}
