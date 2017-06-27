//  WeatherCell.swift
//  Weathered
//  Created by lain on 2017-06-27.
//  Copyright © 2017 joem. All rights reserved.

import Cocoa

class WeatherCell: NSCollectionViewItem {
    
    // Outlets
    @IBOutlet weak var weatherCellImage: NSImageView!
    @IBOutlet weak var dateCell: NSTextField!
    @IBOutlet weak var minTempLbl: NSTextField!
    @IBOutlet weak var highTempLbl: NSTextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        self.view.wantsLayer = true
        self.view.layer?.backgroundColor = CGColor(red: 0.69, green: 0.85, blue: 0.99, alpha: 0.5)
        
        self.view.layer?.cornerRadius = 5
        
    }
    
}
