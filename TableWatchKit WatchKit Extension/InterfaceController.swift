//
//  InterfaceController.swift
//  TableWatchKit WatchKit Extension
//
//  Created by Jian Yao Ang on 12/27/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    @IBOutlet weak var jLawTable: WKInterfaceTable!
    
    
    let jLaws = ["JLaw", "JLaw1", "JLaw2"];
    
//    let jLaws: NSArray = ["HungerGames", "MockingJay", "XMen"];
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        NSLog("%@ awakeWithContext", self)
        
        populateTableData()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }
    
    private func populateTableData(){
        
        jLawTable.setNumberOfRows(jLaws.count, withRowType: "JLawRow");
        
        for(index, JLaws) in enumerate(jLaws){
            
            if let row = jLawTable.rowControllerAtIndex(index) as? JLawTableRowController{
                row.jLawLabel.setText(JLaws)
                
                row.jLawImage.setImage(UIImage(named: JLaws))
            }
        }
        
        
    }
    

}
