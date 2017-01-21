//
//  Game.swift
//  GGJ2017
//
//  Created by Sujatha Nagarajan on 1/20/17.
//  Copyright © 2017 GG. All rights reserved.
//

import Foundation
import CoreImage
import Cocoa

class Game
{
	let Bird: TheBird = TheBird();
	var Objects: [NPT] = [];
	var bg: NSImage!;

	public func Initialize(viewController: NSViewController!)
	{
		print("game initialize");
		//set background
		if let bg = NSImage(named: "bg"){
		bg.size = viewController.view.frame.size;
		viewController.view.layer?.backgroundColor = NSColor(patternImage: bg).cgColor;			
		
		//initialize objects
		Bird.initialize(viewController: viewController, position: NSPoint(x: 0, y: 0), visible: true)
		}
		
		
	}
}
