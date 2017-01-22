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
	var nm : String = String()
	let sizefactor : CGFloat = 3;
	func initialize(width : CGFloat, height : CGFloat, index: NSNumber)
	{
		if let image = NSImage(named: "tree"){
		
			image.size = NSSize(width: image.size.width/2, height: image.size.height/2)
			let tex = SKTexture(image: image)
			self.texture = tex
		}
		name = "tree" + index.stringValue
		nm = name!
		super.size = CGSize(width: width/sizefactor, height: height/sizefactor)
		let r = CGFloat(arc4random_uniform(500)) + CGFloat(100);
		super.position = NSPoint(x: width/2 + r, y: height/2 + 50)

	}
}
	
