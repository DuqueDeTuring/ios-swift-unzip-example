//
//  ViewController.swift
//  ios-swift-unzip-example
//
//  Created by Andrés on 12/17/15.
//  Copyright © 2015 Andrés. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bundle = NSBundle.mainBundle()
        let myZipFilePath = bundle.pathForResource("hello", ofType: "zip")
        print(myZipFilePath!)
        let documentDirectoryURL =  try! NSFileManager().URLForDirectory(.DocumentDirectory, inDomain: .UserDomainMask, appropriateForURL: nil, create: true)
        print("Documents dir:")
        print(documentDirectoryURL.path)
        SSZipArchive.unzipFileAtPath(myZipFilePath, toDestination: documentDirectoryURL.path)
        print("Zip file unzipped!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

