//
//  AppDelegate.swift
//  QnA
//
//  Created by Rusty Myers on 3/9/16.
//  Copyright © 2016 Rusty Myers. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        NSLog("Starting App")
        
        // Create a FileManager instance
        let fileManager = NSFileManager.defaultManager()
        
        // Check if file exists, given its path
        // Example: http://stackoverflow.com/questions/30097521/messagebox-from-daemon-in-swift-os-x
        if fileManager.fileExistsAtPath("/Library/BESAgent/BESAgent.app/Contents/MacOS/QnA") {
            print("File exists")
        } else {
            print("File not found")
            let alert:NSAlert = NSAlert();
            alert.messageText = "Missing QnA Binary";
            alert.informativeText = "QnA GUI.app could not find the QnA binary at: /Library/BESAgent/BESAgent.app/Contents/MacOS/QnA. Please install and try again.";
            alert.runModal();
            exit(3)
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

