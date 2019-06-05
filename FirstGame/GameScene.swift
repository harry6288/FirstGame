//
//  GameScene.swift
//  FirstGame
//
//  Created by hardeep kaur on 2019-06-05.
//  Copyright © 2019 hardeep kaur. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
   override func didMove(to view: SKView) {
    // GameEngine constructor from android
    
    let height = self.size.height
    let width = self.size.width
    
    
    //create label object
     let scoreLabel = SKLabelNode(text: "HELLO WORLD")
    //set the label position
    scoreLabel.position = CGPoint(x:100 , y: 400)
    
    // change font and color of text
    
    scoreLabel.fontName = "Avenir"
    scoreLabel.fontSize = 45
    scoreLabel.fontColor = SKColor.yellow
    
    
    // add the label to scene
    addChild(scoreLabel)
    
    //// add square
    
    let square = SKSpriteNode(color: SKColor.red, size: CGSize(width: 100, height: 100))
     square.anchorPoint = CGPoint(x: 1, y: 1)
    
    square.position = CGPoint(x: 300, y: 350)
    addChild(square)
    let m1 = SKAction.moveBy(x: 50, y: 0, duration: 0.5)
    let m2 = SKAction.moveBy(x:0, y:50, duration:2)
    
    let sequence:SKAction = SKAction.sequence([m1,m2])
    //square.run(sequence)

    let m3 = SKAction.repeatForever(sequence)
    square.run(m3)
    // add image
    
    //let pikachuNode = SKSpriteNode(imageNamed: "pikachu")
    
   // pikachuNode.position = CGPoint(x: 100, y: 100)
    
   // addChild(pikachuNode)
    
    }

}
