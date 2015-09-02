//
//  ArticleTableView.swift
//  My-RSS-Reader
//
//  Created by Black/Jack on 2015/09/02.
//  Copyright (c) 2015年 Black/Jack. All rights reserved.
//

import UIKit

class ArticleTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    var siteName: String!
    var siteImageName: String!
    var color: UIColor!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.delegate = self
        self.dataSource = self
        
        // ArticleTableViewでSiteTopTableViewCellを使用するための登録を行う
        self.registerNib(UINib(nibName: "SiteTopTableViewCell", bundle: nil), forCellReuseIdentifier: "SiteTopTableViewCell")
        self.registerNib(UINib(nibName: "ArticleTableViewCell", bundle: nil), forCellReuseIdentifier: "ArticleTableViewCell")
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
    }
    
    //セクション数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    //セル数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 10
        }
    }
    
    //セル内容
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("SiteTopTableViewCell", forIndexPath: indexPath) as! SiteTopTableViewCell
            cell.siteImageView.image = UIImage(named: self.siteImageName)
            cell.siteName.text = self.siteName
            cell.imageMaskView.backgroundColor = self.color
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("ArticleTableViewCell", forIndexPath: indexPath) as! ArticleTableViewCell
            return cell
        }
        
    }
    
    //セルの高さ
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 200
        } else {
            return 85
        }
    }
    
    

}
