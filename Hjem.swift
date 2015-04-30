//
//  Hjem.swift
//  Monsterstartside
//
//  Created by Magnus Kinly on 26/04/15.
//  Copyright (c) 2015 MaaMetis. All rights reserved.
//

import UIKit
import Foundation


class Hjem: UIViewController {
    

    var defaults: NSUserDefaults!
    var userSettings: NSString!
    var starPoints: Int = 0
    var oldStarPoints: Int = 100
    var saveAddSundhedsPoint: Int = 0
    var oldSundhedsPoint: Int = 40
    var Sundhedspoint: Int = 0
    var Sundhedspoints: Int = 0
    var bananPris: Int = 10
    var firstPrice: Int = 0
    var sundhedspointBanan: Int = 0
    var secondPrice: Int = 0
    var showImageBeard: Bool = true
    var showImageAfro: Bool = true
    
    
    
    //Billeder
     var beard = UIImage(named: "skæg.png") as UIImage!
     var afro = UIImage(named: "AfroCopy") as UIImage!
    
    
    
    //Billeder fra gadgets
    
    @IBOutlet weak var beards: UIButton!
    
    @IBOutlet weak var afros: UIButton!
    
    
    
    
    
    @IBOutlet weak var lblsundhedsPoint: UILabel!
    
    
    
    @IBOutlet weak var lblsaveStarPoints: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    

    override func viewWillAppear(animated: Bool) {
        defaults = NSUserDefaults.standardUserDefaults()
        if let user = defaults.stringForKey("currentUser"){
            
            
            if defaults.objectForKey("Sundhedspoint") != nil{
                Sundhedspoint = defaults.integerForKey("Sundhedspoint")
                defaults.synchronize()
                
                NSLog("The value of integer Sundhedspoint is %i", Sundhedspoint);
                
            }
            
            
            
            if  defaults.objectForKey("starPoints") != nil{
                starPoints = defaults.integerForKey("starPoints")
                defaults.synchronize()
                
                NSLog("The value of integer starPoints is %i", starPoints);
                
                
            }
            
            if defaults.objectForKey("firstPrice") != nil{
                firstPrice = defaults.integerForKey("firstPrice")
                defaults.synchronize()
                
                NSLog("The value of integer firstPrice is %i", firstPrice);
                
            }
            
            if defaults.objectForKey("sundhedspointBanan") != nil{
                sundhedspointBanan = defaults.integerForKey("sundhedspointBanan")
                defaults.synchronize()
                
                NSLog("The value of integer sundhedspointBanan is %i", sundhedspointBanan);
                
            }
            
            if defaults.objectForKey("secondPrice") != nil{
                secondPrice = defaults.integerForKey("secondPrice")
                defaults.synchronize()
                
                 NSLog("The value of integer secondPrice is %i", secondPrice);
                
            }
            
            if defaults.boolForKey("showImageBeard") != true {
                
                showImageBeard = defaults.boolForKey("showImageBeard")
                defaults.synchronize()
            
                NSLog("The value of bool showImageBeard is %@", showImageBeard ? "True" : "False" )
            
            }
            
            if defaults.boolForKey("showImageAfro") != true {
            
                showImageAfro = defaults.boolForKey("showImageAfro")
                defaults.synchronize()
            
                NSLog("The value of bool showImageAfro is %@", showImageAfro ? "True" : "False" )
                
            }
            

            
            
            
            
            
            
            
        }
        
        if showImageBeard {
        
             beards.setImage(UIImage(named: "skæg"), forState: .Normal)
        
        }
        
        else {
        
            beards.setImage(UIImage(named: ""), forState: .Normal)
            
        }
        
        if showImageAfro {
        
            afros.setImage(UIImage(named: "AfroCopy"), forState: .Normal)
        }
        
        else {
        
        afros.setImage(UIImage(named: ""), forState: .Normal)
        
        }
        
        
     
        
        lblsaveStarPoints.text = "\( oldStarPoints + (starPoints) - ((firstPrice) + (secondPrice)))"
        NSLog("The value of label lblsaveStarPoints is %i", lblsaveStarPoints);
        
        
        lblsundhedsPoint.text = "\(oldSundhedsPoint + (sundhedspointBanan) + (Sundhedspoint))"
        
        
        
        
    }
    
    
    
}