//
//  TheBird.swift
//  GGJ2017
//
//  Created by Sujatha Nagarajan on 1/20/17.
//  Copyright © 2017 GG. All rights reserved.
//

import Foundation
import CoreImage
import Cocoa
import SpriteKit
import GameplayKit
class TheBird: SKSpriteNode
{
	var direction: NSPoint = NSPoint();
	//var speed: Double = 5; super node
	var angle: Double = 0;
	
	func initialize(width : CGFloat, height : CGFloat, position: NSPoint, visible: Bool)
	{
		let image = NSImage(named: "eaglebody")!;
		
		image.size = NSSize(width: image.size.width/2, height: image.size.height/2)
		let tex = SKTexture(image: image)
		self.texture = tex
		
		direction.x = 1;
		direction.y = 0;
		speed = 5;
		name = "bird"
		super.size = CGSize(width: width/13, height: height/13)
		//super.position = NSPoint(x: 0, y: 0)
		super.position = NSPoint(x: width/2, y: height/2 + 50)
		//super.patter
	}
	
	func updatePhysics(_ time: TimeInterval)
	{
		var sp = speed
		let r = time * Double(speed) / 10000000;
		let newpos = CGPoint(x: r * cos(angle), y: r * sin(angle))
		//angle += 0.001
		super.position.x += newpos.x;
		super.position.y += newpos.y
		
		
		if(super.position.x > (scene?.frame.width)!)
		{
			super.position.x = (scene?.frame.width)!
		}
	
	}
	
	func SetDirection(_ dir: NSPoint)
	{
		direction.x *= dir.x
		direction.y *= dir.y
		speed += 0.1
	}
	
	func update(_ currentTime: TimeInterval) {	
		updatePhysics(currentTime);
	}
		
	
}
