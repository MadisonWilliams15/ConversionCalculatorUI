//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Madison Williams on 7/10/18.
//  Copyright © 2018 Madison Williams. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    struct Converter {
        var label : String
        var inputUnit : String
        var outputUnit : String
    }
    
    var currentConverter: Converter?
    var converters = [Converter]()
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBOutlet weak var outputDisplay: UITextField!
    
    
  
    @IBAction func convertPressed(_ sender: UIButton) {
        
        let optionMenu = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        
        optionMenu.addAction(UIAlertAction(title: converters[0].label, style: UIAlertActionStyle.default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.currentConverter = self.converters[0]
        }))
        
        optionMenu.addAction(UIAlertAction(title: converters[1].label, style: UIAlertActionStyle.default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.currentConverter = self.converters[1]
        }))
        
        
        optionMenu.addAction( UIAlertAction(title: converters[2].label, style: UIAlertActionStyle.default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.currentConverter = self.converters[2]
        }))
        
        optionMenu.addAction( UIAlertAction(title: converters[2].label, style: UIAlertActionStyle.default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.currentConverter = self.converters[3]
        }))
    
        
        
        self.present(optionMenu, animated: true, completion: nil)
        
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        converters.append(Converter(label : "fahrenheit to celcius", inputUnit : "°F", outputUnit : "°C" ))
        converters.append(Converter(label : "celcius to fahrenheit", inputUnit : "°C", outputUnit : "°F" ))
        converters.append(Converter(label : "miles to kilometers", inputUnit : "mi", outputUnit : "km" ))
        converters.append(Converter(label : "kilometers to miles", inputUnit : "km", outputUnit : "mi"))
        
        currentConverter = converters[0] //set default converter
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
