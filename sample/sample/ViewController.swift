//
//  ViewController.swift
//  sample
//
//  Created by jaswanth tata on 23/10/17.
//  Copyright © 2017 jaswanth tata. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var textcall: NSTextFieldCell!
    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var text: NSTextField!
    @IBOutlet weak var button: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func buttonTapped(_ sender: Any) {
        textcall.stringValue = "\(text)"
        
    }
}

