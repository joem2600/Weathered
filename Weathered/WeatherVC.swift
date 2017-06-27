//
//  WeatherVC.swift
//  Weathered
//
//  Created by lain on 2017-06-24.
//  Copyright © 2017 joem. All rights reserved.
//

import Cocoa



class WeatherVC: NSViewController {
    
    @IBOutlet weak var dateLbl: NSTextField!
    @IBOutlet weak var temperatureLbl: NSTextField!
    @IBOutlet weak var locationLbl: NSTextField!
    @IBOutlet weak var weatherImage: NSImageView!
    @IBOutlet weak var weatherLbl: NSTextField!
    @IBOutlet weak var weatherCollection: NSCollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        weatherCollection.delegate = self
        weatherCollection.dataSource = self

        // loads first
        
    }
    
    override func viewWillAppear() {
        // loads second

        
        
    }
    
    override func viewDidAppear() {
        // loads third
        
        self.view.layer?.backgroundColor = CGColor(red: 0.29, green: 0.72, blue: 0.98, alpha: 1.0)
    
    }

    override func viewWillDisappear() {
        // on object exit load first
        
        
    }
    
    override func viewDidDisappear() {
        // on object exit loads second
        
        
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension WeatherVC: NSCollectionViewDelegate, NSCollectionViewDataSource, NSCollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        
        let forecastItem = collectionView.makeItem(withIdentifier: "WeatherCell", for: indexPath)
        
        return forecastItem
    }
    
    func numberOfSections(in collectionView: NSCollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> NSSize {
        return NSSize(width: 125, height: 125)
    }
    
}


























































