//
//  TheTree.swift
//  GGJ2017
//
//  Created by Sujatha Nagarajan on 1/21/17.
//  Copyright © 2017 GG. All rights reserved.
//

import Foundation
import SpriteKit

class TheTree: SKSpriteNode
{
	//var nm : String = String()
	let sizefactor : CGFloat = 3;
	let PerchablePosition = CGPoint(x: 0, y:0); // relative to tree
	var debugpos: CGPoint = CGPoint(x: 0, y: 0);
	func initialize(width : CGFloat, height : CGFloat, index: NSNumber, selfCategory: UInt32, collisionCategory: UInt32)
	{
		super.size = CGSize(width: width/sizefactor, height: height/sizefactor)
		let r = CGFloat(arc4random_uniform(500)) + CGFloat(100);
		super.position = NSPoint(x: width/2 + r, y: height/2 + 50)
debugpos = super.position;
		if let image = NSImage(named: "tree"){
		
			image.size = NSSize(width: image.size.width/2, height: image.size.height/2)
			let tex = SKTexture(image: image)
			self.texture = tex
		}
		physicsBody = SKPhysicsBody(rectangleOf: self.size)
		physicsBody!.categoryBitMask = selfCategory
		physicsBody!.contactTestBitMask = collisionCategory
		physicsBody!.isDynamic = false; // does not move
		physicsBody!.isDynamic = true; // debug 

		name = "tree";
		// + index.stringValue
		//nm = name!
	}
	
	func update(_ currentTime: TimeInterval) {	
		super.position = debugpos;
	}

}
	
