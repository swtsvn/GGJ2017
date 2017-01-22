//
//  ViewController.swift
//  GGJ2017
//
//  Created by Sujatha Nagarajan on 1/21/17.
//  Copyright © 2017 GG. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit

class ViewController: NSViewController {

    @IBOutlet var skView: SKView!
    var debugscene = GameMainScene();
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		/*
        
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene = GKScene(fileNamed: "GameScene") {
            
            // Get the SKScene from the loaded GKScene
            if let sceneNode = scene.rootNode as! GameScene? {
                
                // Copy gameplay related content over to the scene
                sceneNode.entities = scene.entities
                sceneNode.graphs = scene.graphs
                
                // Set the scale mode to scale to fit the window
                sceneNode.scaleMode = .aspectFill
                
                // Present the scene
                if let view = self.skView {
                    view.presentScene(sceneNode)
                    
                    view.ignoresSiblingOrder = true
                    
                    view.showsFPS = true
                    view.showsNodeCount = true
                }
            }
        }
		*/
		debugscene.initialize(width: skView.frame.width, height:skView.frame.height); 
		skView.presentScene(debugscene, transition: SKTransition.reveal(with: SKTransitionDirection.right, duration: 0.5))
		

		skView.showsFPS = true
		skView.showsNodeCount = true
  
	}
	
	override func viewDidAppear() {

	/* let presOptions: 
	 NSApplicationPresentationOptions = ([.fullScreen,.autoHideMenuBar])   
        let optionsDictionary = [NSFullScreenModeApplicationPresentationOptions : NSNumber(value: presOptions.rawValue)]
        self.view.enterFullScreenMode(NSScreen.main()!, withOptions:optionsDictionary)
        self.view.wantsLayer = true
		*/
	}

}

