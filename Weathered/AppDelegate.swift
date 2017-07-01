//
//  AppDelegate.swift
//  Weathered
//
//  Created by lain on 2017-06-24.
//  Copyright © 2017 joem. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    
    // Variables
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)


    func applicationDidFinishLaunching(_ aNotification: Notification) {

        statusItem.button?.title  = "--°"
        statusItem.action = #selector(AppDelegate.displayPopUp(_:))
        WeatherService.instance.downloadWeatherDetails()
        
    
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func displayPopUp(_ sender: AnyObject) {
        
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateController(withIdentifier: "WeatherVC") as? NSViewController else { return }
        
        let popOverView = NSPopover()
        popOverView.contentViewController = vc
        popOverView.behavior = .transient
        popOverView.show(relativeTo: statusItem.button!.bounds, of: statusItem.button!, preferredEdge: .maxY)
        
        
        
    }


}

