//
//  ViewController.swift
//  GGJ2017
//
//  Created by Sujatha Nagarajan on 1/20/17.
//  Copyright © 2017 GG. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

	let game: Game = Game();
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.frame.size.width = self.view.bounds.width
		self.view.frame.size.height = self.view.bounds.height
		game.Initialize(viewController: self);
	}

	override func viewDidAppear() {

	 let presOptions: 
	 NSApplicationPresentationOptions = ([.fullScreen,.autoHideMenuBar])   
        let optionsDictionary = [NSFullScreenModeApplicationPresentationOptions : NSNumber(value: presOptions.rawValue)]
        self.view.enterFullScreenMode(NSScreen.main()!, withOptions:optionsDictionary)
        self.view.wantsLayer = true
	}
	
	override var representedObject: Any? {
		didSet {
		// Update the view, if already loaded.
		}
	}


}

