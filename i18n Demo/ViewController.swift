//
//  ViewController.swift
//  i18n Demo
//
//  Created by mac on 15/1/14.
//  Copyright (c) 2015年 LingAn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textLabel : UILabel!
    @IBOutlet var numberLabel : UILabel!
    @IBOutlet var currencyLabel : UILabel!
    @IBOutlet var dateLabel : UILabel!
    @IBOutlet var imageView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initViewDisplay()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var numberFormatter : NSNumberFormatter{
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .DecimalStyle
        return formatter
    }
    var currencyFormatter : NSNumberFormatter{
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        return formatter
    }
    var dateFormatter : NSDateFormatter{
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .MediumStyle
        return formatter
    }
    
    func initViewDisplay(){
        /*
        textLabel.text = "Good Morning"
        numberLabel.text = "9999999.999"
        currencyLabel.text = "50000"
        dateLabel.text = "01/15/2015"
        imageView.image = UIImage(named: "hello")
         */
        
        //textLabel.text = "Good Morning"
        textLabel.text = NSLocalizedString("GOOD_MORNING", comment: "Good Morning")
        numberLabel.text = numberFormatter.stringFromNumber(9999999.999)
        currencyLabel.text = currencyFormatter.stringFromNumber(50000)
        dateLabel.text = dateFormatter.stringFromDate(NSDate())
        imageView.image = UIImage(named: "hello")
        //imageView.image = UIImage(named: NSLocalizedString("HELLO",comment: "hello"))

    }
    
}

