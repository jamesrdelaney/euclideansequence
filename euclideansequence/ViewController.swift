//
//  ViewController.swift
//  euclideansequence
//
//  Created by Apple on 16/07/2016.
//  Copyright © 2016 Delaney. All rights reserved.
//

import UIKit
import MIKMIDI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
        let midiDeviceList = MidiController()
        midiDeviceList.searchForDevices()
        
        NSLog("VC: The first device in the list is: " + midiDeviceList.getName())
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

