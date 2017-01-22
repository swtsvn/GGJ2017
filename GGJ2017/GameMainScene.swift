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

	

    var trees  = [TheTree]()
	//: [TheTree?] = Array<TheTree>(repeating: nil, count: 10)
    var graphs = [String : GKGraph]()
    
    private var lastUpdateTime : TimeInterval = 0
    
	override func didMove(to view: SKView) {
	}
	
	
	func initialize(width : CGFloat, height : CGFloat)
	{
		let light = SKLightNode()
		light.position = CGPoint(x: 0,y: 0)
		light.ambientColor = NSColor.white
		light.lightColor = NSColor.white
		let lightnode = SKSpriteNode()
		lightnode.addChild(light)
		self.addChild(lightnode)
		
		
		let bgnode = SKSpriteNode(imageNamed: "bg")
		bgnode.position = CGPoint(x: width/2, y: height/2)
		bgnode.size = CGSize(width: width, height: height) 
		self.addChild(bgnode)
		self.scaleMode = .aspectFill
		self.size = CGSize(width: width, height: height) 
		let sz = self.size
		self.position = CGPoint(x: 0, y: 0)
				
		for k in 1...2 {
			let tree = TheTree()
			tree.initialize(width: width, height: height, index: k as NSNumber)
			self.addChild(tree)
			trees.append(tree)

		}
		
		let roadnode = SKSpriteNode();
		if let image = NSImage(named: "road"){
		
		//	image.size = NSSize(width: image.size.width, height: image.size.height/2)
			image.size = NSSize(width: image.size.width, height: image.size.height/1.5)
			let tex = SKTexture(image: image)
			roadnode.texture = tex
			roadnode.size = image.size;
			let ss = image.size
			//roadnode.position = NSPoint(x: image.size.width/2, y: 0)
			roadnode.position = NSPoint(x: image.size.width/2, y: image.size.height - 200)

		}
		roadnode.name = "road"
		self.addChild(roadnode)
		
		

		Bird.initialize(width: width, height: height, position: NSPoint(x: 0, y: 0), visible: true)
		self.addChild(Bird)
		

		self.physicsWorld.gravity = CGVector(dx: 0, dy: -1)
		//self.physicsWorld.contactDelegate = sendingScene as! SKPhysicsContactDelegate?;
		
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
	
	 func moveLeft(sender: AnyObject?) {
    print("Left arrow.")
}
	
	func moveRight(sender: AnyObject?) {
		Bird.SetDirection(NSPoint(x: 1, y: 0))
	}
    
    override func keyDown(with event: NSEvent) {
		//interpretKeyEvents([event])
		print(event.keyCode)
		
        switch event.keyCode {
		case 124: 
			Bird.SetDirection(NSPoint(x: 1, y: 0))
			break
    //    case 0x31:
		default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
		
    }
    
    
    override func update(_ currentTime: TimeInterval) {
	
		if let b = self.childNode(withName: "bird"){
			Bird.update(currentTime)
			}
	//	for child in children{
			//if let sprite = child as? SKSpriteNode {
			
				//sprite.
				//.update(currentTime);
			//	}
	//	}
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
