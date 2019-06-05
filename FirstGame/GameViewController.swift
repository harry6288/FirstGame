//
//  GameViewController.swift
//  FirstGame
//
//  Created by hardeep kaur on 2019-06-05.
//  Copyright © 2019 hardeep kaur. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //set the game to use the default screen size
        let scene = GameScene(size:view.frame.size)
        let skView = view as! SKView
        
        //configure the game to show debug information about game
        skView.showsFPS = true
        skView.showsNodeCount = true
       
        // show the game
        skView.presentScene(scene)
        
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
