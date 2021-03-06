//
//  SettingsVC.swift
//  schoolFinder
//
//  Created by Jonathan Yu on 2/12/16.
//  Copyright © 2016 Jonathan Yu. All rights reserved.
//

import Foundation
import UIKit
import SafariServices

class SettingsVC: UITableViewController {
    var settingItems: [[String]] = [["AsyncDisplayKit", "EAIntroView", "SnapKit", "DZNEmptyDataSet", "Realm", "Whisper", "AlamoFire", "AlamofireObjectMapper", "BTNavigationDropdownMenu"]]
    var podURLs: [String]! = ["http://asyncdisplaykit.org", "https://github.com/ealeksandrov/EAIntroView", "https://github.com/SnapKit/SnapKit", "https://github.com/dzenbot/DZNEmptyDataSet", "https://realm.io/", "https://github.com/hyperoslo/Whisper", "https://github.com/Alamofire/Alamofire", "https://github.com/tristanhimmelman/AlamofireObjectMapper", "https://github.com/PhamBaTho/BTNavigationDropdownMenu"]
    
    override func viewDidLoad() {
        tableView = UITableView(frame: tableView.frame, style: .Grouped)
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.title = "Settings and Acknowledgements"
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0:
            return "Acknowledgements"
        default:
            return "Error:"
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        cell.backgroundColor = UIColor.whiteColor()
        cell.textLabel?.text = self.settingItems[indexPath.section][indexPath.row]
        cell.detailTextLabel?.text = self.podURLs[indexPath.row]
        return cell
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.settingItems[section].count
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let selectedURL = self.podURLs[indexPath.row]
        let svc = SFSafariViewController(URL: NSURL(string: selectedURL)!)
        self.presentViewController(svc, animated: true, completion: nil)
    }
}