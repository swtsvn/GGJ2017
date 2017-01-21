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
	var image: NSImage = NSImage();
	var imageView: NSImageView = NSImageView();
	var direction: NSPoint = NSPoint();
//	var speed: Double = 5;
	var angle: Double = 0;
	func initialize(sendingScene: SKScene, position: NSPoint, visible: Bool)
	{
		image = NSImage(named: "eaglebody")!;
		
		image.size = NSSize(width: image.size.width/2, height: image.size.height/2)
		let tex = SKTexture(image: image)
		self.texture = tex
		
		imageView = NSImageView(frame: NSRect(x: 0, y: (sendingScene.view?.frame.origin.y)! + (sendingScene.view?.frame.size.height)!/2, width: image.size.width, height: image.size.height));
		imageView.image = image;
		direction.x = 1;
		direction.y = 0;
		speed = 5;
		name = "bird"
		super.size = CGSize(width: (sendingScene.view?.frame.size.width)!/12, height: (sendingScene.view?.frame.size.height)!/12)
		//super.position = NSPoint(x: 0, y: 0)
		super.position = NSPoint(x: (sendingScene.view?.frame.size.width)!/2, y: (sendingScene.view?.frame.size.height)!/2)
		//super.patter
	}
	
	func updatePhysics(_ time: TimeInterval)
	{
		let r = time * Double(speed) / 10000000;
		let newpos = CGPoint(x: r * cos(angle), y: r * sin(angle))
		//angle += 0.001
		super.position.x += newpos.x;
		super.position.y += newpos.y
	
	}
	
	  func update(_ currentTime: TimeInterval) {


			updatePhysics(currentTime);
	}
		
	
}
