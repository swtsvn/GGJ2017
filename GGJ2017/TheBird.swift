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
class TheBird
{
	var image: NSImage = NSImage();
	var imageView: NSImageView = NSImageView();
	
	func initialize(viewController: NSViewController!, position: NSPoint, visible: Bool)
	{
	image = NSImage(named: "eaglebody")!;
	image.size = NSSize(width: image.size.width/2, height: image.size.height/2)
	imageView = NSImageView(frame: NSRect(x: 0, y: viewController.view.frame.origin.y + viewController.view.frame.size.height/2, width: image.size.width, height: image.size.height));
	imageView.image = image;
	viewController.view.addSubview(imageView)
		
				
	}
		
	
}
