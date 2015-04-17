//
//  TimelineViewContoller.swift
//  WMA Experience
//
//  Created by Dylan on 4/15/15.
//  Copyright (c) 2015 Computer Club. All rights reserved.
//

import UIKit
import TwitterKit

class TimelineViewContoller: UITableViewController {

    
    class UserTimelineViewController: TWTRTimelineViewController {
        convenience init() {
            let client = Twitter.sharedInstance().APIClient
            let dataSource = TWTRUserTimelineDataSource(screenName: "WilbrahamMonson", APIClient: client)
            
            self.init(dataSource: dataSource)
        }
        
        override required init(dataSource: TWTRTimelineDataSource) {
            super.init(dataSource: dataSource)
        }
        
        required init(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }


}
