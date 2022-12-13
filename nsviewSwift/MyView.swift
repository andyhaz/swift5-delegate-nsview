//
//  MyView.swift
//  nsviewSwift
//
//  Created by andyhaz on 10/11/22.
//

import Foundation
import Cocoa

// Use an initial uppercase letter for class and other type names.
// This avoids a class with a variable name using a lowercase letter
// (such as the @IBOutlet in ViewController.swift).
class MyView: NSView {
    // MARK: - Variables
    var bgColor: NSColor = NSColor.white
    //set up delgate
    weak var delegate: viewDelegate?
    
    override func draw(_ dirtyRect: NSRect) {
        print("draw")
        // Fill with the current background color.
        // No need to call through to `super` here, since NSView is known to do nothing in its own draw() method.
        bgColor.setFill()
        dirtyRect.fill()
    }
    
    func changeBackgroundColor(color: NSColor) {
        // Remember the new background color, and force the view to redraw.
        bgColor = color
        needsDisplay = true
    }
    
    override func mouseDown(with event: NSEvent) {
        // Convert the mouse location from window coordinates to view coordinates of this view.
        let location = convert(event.locationInWindow, from: nil)
       /// print("mouse down: \(location)")
      //  print(type(of: location))
        //set up delgate
        self.delegate?.mouseEvents(location: location)
    }
}
