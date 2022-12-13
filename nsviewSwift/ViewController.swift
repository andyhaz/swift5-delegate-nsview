//
//  ViewController.swift
//  nsviewSwift
//
//  Created by andyhaz on 10/11/22.
//

import Cocoa

protocol viewDelegate:AnyObject{
    func mouseEvents(location: CGPoint)
}

class ViewController: NSViewController,viewDelegate {
    // Use the actual class of the view in the outlet declaration.
    // This should match the class set for this view in the Main storyboard.
    @IBOutlet weak var myView: MyView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.wantsLayer = true
        // Set the initial background color.
        // By using the correct class name (MyView) above, you can now
        // call the custom function to change the background color.
        myView.changeBackgroundColor(color: .red)
        //set the delegate
        myView.delegate = self
    }//
    
    func mouseEvents(location: CGPoint) {
        print("mouseEvent down:\(location)")
    }
    
}
