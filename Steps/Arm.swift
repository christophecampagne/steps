import Foundation
import SpriteKit

class Arm: SKNode{
    
    let shoulder: SKShapeNode!
    let endEffector: SKShapeNode!
    override init() {
        let sectionLenght: CGFloat = 100
        let sectionRect = CGRect(x: -10,
                                 y: -sectionLenght,
                                 width: 20,
                                 height: sectionLenght)
        
        let upperArm = SKShapeNode(rect: sectionRect)
        let midArm = SKShapeNode(rect: sectionRect)
        let lowerArm = SKShapeNode(rect: sectionRect)
         shoulder = SKShapeNode(circleOfRadius: 5)
        let elbow = SKShapeNode(circleOfRadius: 5)
        let wrist = SKShapeNode(circleOfRadius: 5)
        endEffector = SKShapeNode(circleOfRadius: 5)
        super.init()
        
        self.addChild(shoulder)
        shoulder.addChild(upperArm)
        upperArm.addChild(elbow)
        elbow.addChild(midArm)
        midArm.addChild(wrist)
        wrist.addChild(lowerArm)
        lowerArm.addChild(endEffector)
        
        shoulder.constraints = [SKConstraint.positionX(SKRange(constantValue: 320),
                                                      y: SKRange(constantValue: 320))]
        let positionConstraint = SKConstraint.positionY(SKRange(constantValue: -sectionLenght))
        elbow.constraints = [positionConstraint]
        wrist.constraints = [positionConstraint]
        endEffector.constraints = [positionConstraint]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
