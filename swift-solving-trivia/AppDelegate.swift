//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?
	
	// Input is a dictionary of string pairs that correspond to the state name and capital name
	func solveTrivia(statesAndCapitals: [String : String]) -> String {
		
		for (state, capital) in statesAndCapitals {
			if !containsSharedLetters(state: state, capital: capital) {
				return state
			}
		}
		return "THEY ALL HAVE SHARED LETTERS"
	}
	
	func containsSharedLetters(state state: String, capital: String) -> Bool {
		
		let charactetSet = NSCharacterSet(charactersInString: capital.lowercaseString)
		if state.lowercaseString.rangeOfCharacterFromSet(charactetSet) != nil {
			// They conain the matching letters
			return true
		}
		return false
	}
}

