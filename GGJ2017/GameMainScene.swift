//
//  GameScene.swift
//  GGJ2017
//
//  Created by Sujatha Nagarajan on 1/21/17.
//  Copyright © 2017 GG. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameMainScene: SKScene {
    
	let Bird: TheBird = TheBird();

	override func didMove(to view: SKView) {
		//self.view?.addSubview(view);
		
	}
	

    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    
    private var lastUpdateTime : TimeInterval = 0
    
	func initialize(sendingScene: SKScene)
	{
		let light = SKLightNode()
		light.position = CGPoint(x: 0,y: 0)
		light.ambientColor = NSColor.white
		light.lightColor = NSColor.white
		let lightnode = SKSpriteNode()
		lightnode.addChild(light)
		self.addChild(lightnode)
		
		Bird.initialize(sendingScene: sendingScene, position: NSPoint(x: 0, y: 0), visible: true)
		
		let bgnode = SKSpriteNode(imageNamed: "bg")
		bgnode.position = CGPoint(x: sendingScene.view!.frame.width/2, y: (sendingScene.view?.frame.height)!/2)
		bgnode.size = (sendingScene.view?.frame.size)!
		self.addChild(bgnode)
		self.scaleMode = .aspectFill
		self.size = sendingScene.size
self.addChild(Bird)

				
		self.physicsWorld.gravity = CGVector(dx: 0, dy: -1)
		//self.physicsWorld.contactDelegate = sendingScene as! SKPhysicsContactDelegate?;
		sendingScene.view!.presentScene(self, transition: SKTransition.reveal(with: SKTransitionDirection.right, duration: 0.5))
		

	}
	
    override func sceneDidLoad() {
        
        self.lastUpdateTime = 0
        
     }
    
    
    func touchDown(atPoint pos : CGPoint) {
       
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func mouseDown(with event: NSEvent) {
  
    }
    
    override func mouseDragged(with event: NSEvent) {
     
    }
    
    override func mouseUp(with event: NSEvent) {
		
      
    }
    
    override func keyDown(with event: NSEvent) {
        switch event.keyCode {
      //  case 0x31:
		default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
	
		
		Bird.update(currentTime)
		for child in children{
			if let sprite = child as? SKSpriteNode {
			
				//sprite.
				//.update(currentTime);
				}
		}
        // Called before each frame is rendered
        /*
        // Initialize _lastUpdateTime if it has not already been
        if (self.lastUpdateTime == 0) {
            self.lastUpdateTime = currentTime
        }
        
        // Calculate time since last update
        let dt = currentTime - self.lastUpdateTime
        
        // Update entities
        for entity in self.entities {
            entity.update(deltaTime: dt)
        }
        
        self.lastUpdateTime = currentTime
		*/
    }
}
