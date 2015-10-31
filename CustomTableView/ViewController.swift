//
//  ViewController.swift
//  CustomTableView
//
//  Created by Mike Pitre on 10/30/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var uglyThings = ["https://s-media-cache-ak0.pinimg.com/736x/8f/4d/68/8f4d68f6ee188672f7c1e22178f8849c.jpg", "http://i.ytimg.com/vi/7FaJqampKkU/hqdefault.jpg", "http://i.dailymail.co.uk/i/pix/2013/06/08/article-2337844-1A35A7C2000005DC-380_964x1175.jpg", "http://static.indianexpress.com/frontend/iep/story_images/blog.jpg", "http://farm2.static.flickr.com/1138/1265135759_07dc321900.jpg" ]
    
    var uglyTitles = ["Ew", "Gross", "Nasty", "Vom", "Yuck"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("UglyCell") as? UglyCell {
            
            let img: UIImage!
            
            let url = NSURL(string: uglyThings[indexPath.row])!
            if let data = NSData(contentsOfURL: url) {
                img = UIImage(data: data)
            } else {
                img = UIImage(named: "ugly")
            }
            
            cell.configureCell(img, text: uglyTitles[indexPath.row])
            
            return cell
            
            
        } else {
            return UglyCell()
        }
    
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uglyThings.count
    }


}

