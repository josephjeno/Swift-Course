//
//  ViewController.swift
//  API Demo
//
//  Created by Joseph Jeno on 8/26/17.
//  Copyright © 2017 josephjeno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //url of website with api data
        let url = URL(string:"http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=08e64df2d3f3bc0822de1f0fc22fcb2d")!
        
        // double click on completionHandler to set data, response, and error
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if error != nil {
                
                print(error!)
                
            } else {
                
                // safety check to ensure data exists
                if let urlContent = data {
                    
                    do {
                        
                        // creates api object
                        let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        
                        // prints entire jsonResult (from api link)
                        print(jsonResult)
                        
                        // prints just requested jsonResult (in this case name)
                        print(jsonResult["name"])
                        
                        // prints the description within weather array of jsonResult
                        if let description = ((jsonResult["weather"] as? NSArray)?[0] as? NSDictionary)?["description"] as? String {
                            
                            print(description)
                        }
                        
                    } catch {
                        print("JSON processing failed")
                    }
                }
            }
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

