//
//  ViewController.swift
//  NSOpenPanel
//
//  Created by sycf_ios on 2017/1/20.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSOpenSavePanelDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewDidAppear() {
        
//        if(i == NSOKButton){
//            print(openPanel.URL);
//            var lettersPic = NSImage(contentsOfURL: openPanel.URL!);
//            imageView.image = lettersPic;
//            
//        }
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func openFile(_ sender: Any) {
        let openPanel = NSOpenPanel();
        openPanel.allowsMultipleSelection = true;
        openPanel.canChooseDirectories = true;
        openPanel.canCreateDirectories = true;
        openPanel.canChooseFiles = true;
        openPanel.delegate = self
        let i = openPanel.runModal();
//        openPanel.beginSheet(view.window!, completionHandler: nil)
        if i == NSModalResponseOK {
            print(openPanel.url ?? "failed")
            
        }
    }

    func panel(_ sender: Any, shouldEnable url: URL) -> Bool {
        print("shouldEnable")
        return true
    }
    func panel(_ sender: Any, didChangeToDirectoryURL url: URL?) {
        print("didChangeToDirectoryURL")
    }
    func panel(_ sender: Any, validate url: URL) throws {
        print("*****\(url.absoluteString)")
    }
    func panel(_ sender: Any, userEnteredFilename filename: String, confirmed okFlag: Bool) -> String? {
        print("userEnterdFileName")
        return filename
    }
    func panel(_ sender: Any, willExpand expanding: Bool) {
        print("willExpand")
       
    }
}

