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
    
    let square = SKSpriteNode(color: SKColor.red, size: CGSize(width: 200, height: 200))
     square.anchorPoint = CGPoint(x: 1, y: 1)
    
    square.position = CGPoint(x: 300, y: 350)
    addChild(square)
    
    }

}
