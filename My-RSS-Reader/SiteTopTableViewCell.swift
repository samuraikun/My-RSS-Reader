//
//  SiteTopTableViewCell.swift
//  My-RSS-Reader
//
//  Created by Black/Jack on 2015/09/02.
//  Copyright (c) 2015年 Black/Jack. All rights reserved.
//

import UIKit

class SiteTopTableViewCell: UITableViewCell {
    @IBOutlet weak var siteName: UILabel!
    @IBOutlet weak var imageMaskView: UIView!
    @IBOutlet weak var siteImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setSiteImageView()
        setImageMaskView()
        setNameLabel()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setSiteImageView() {
        self.siteImageView.contentMode = UIViewContentMode.ScaleAspectFill
        self.siteImageView.layer.masksToBounds = true
    }
    
    func setImageMaskView(){
        self.imageMaskView.alpha = 0.6
    }
    
    func setNameLabel() {
        self.siteName.textColor = UIColor.whiteColor()
        self.siteName.textAlignment = NSTextAlignment.Center
        self.siteName.font = UIFont(name: "Helvetica-Light", size: 40)
    }
    
}
