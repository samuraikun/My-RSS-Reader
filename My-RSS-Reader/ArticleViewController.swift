//
//  ViewController.swift
//  My-RSS-Reader
//
//  Created by Black/Jack on 2015/09/02.
//  Copyright (c) 2015年 Black/Jack. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {
    @IBOutlet weak var sitesScrollView: UIScrollView!
    @IBOutlet weak var headerView: UIView!
    
    let wired = "WIRED"
    let shiki = "100SHIKI"
    let cinra = "CINRA.NET"
    
    let wiredImageName = "wired_top_image.png"
    let shikiImageName = "100shiki_top_image.png"
    let cinraImageName = "cinra_top_image.png"
    
    let blue = UIColor(red: 92.0 / 255, green: 192.0 / 255, blue: 210.0 / 255, alpha: 1.0)
    let yellow = UIColor(red: 105.0 / 255, green: 207.0 / 255, blue: 153.0 / 255, alpha: 1.0)
    let red = UIColor(red: 195.0 / 255, green: 123.0 / 255, blue: 175.0 / 255, alpha: 1.0)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.sitesScrollView.contentSize = CGSizeMake(self.view.frame.width * 3, self.view.frame.height)
        self.sitesScrollView.pagingEnabled = true
        
        //ArticleTableViewインスタンスを生成
        setArticleTableView(0, siteName: wired, siteImageName: wiredImageName, color: blue)
        setArticleTableView(self.view.frame.width, siteName: shiki, siteImageName: shikiImageName, color: red)
        setArticleTableView(self.view.frame.width * 2, siteName: cinra, siteImageName: cinraImageName, color: yellow)
        
    }
    
    func setArticleTableView(x: CGFloat, siteName: String, siteImageName: String, color: UIColor) {
        let frame = CGRectMake(x, 0, self.view.frame.width, sitesScrollView.frame.height)
        let articleTableView = ArticleTableView(frame: frame)
        articleTableView.siteName = siteName
        articleTableView.siteImageName = siteImageName
        articleTableView.color = color
        self.sitesScrollView.addSubview(articleTableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

