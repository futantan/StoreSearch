//
//  UIImageView+DownloadImage.swift
//  StoreSearch
//
//  Created by luckytantanfu on 15/7/20.
//  Copyright (c) 2015年 futantan. All rights reserved.
//

import UIKit

extension UIImageView {
    func loadImageWithURL(url: NSURL) -> NSURLSessionDownloadTask {
        let session = NSURLSession.sharedSession()
        let downloadTask = session.downloadTaskWithURL(url, completionHandler: {
            [weak self] url, response, error in
            
            if error == nil && url != nil,
                let data = NSData(contentsOfURL: url),
                let image = UIImage(data: data) {
                    dispatch_async(dispatch_get_main_queue()) {
                        if let strongSelf = self {
                            strongSelf.image = image
                        }
                    }
            }
        })
        downloadTask.resume()
        return downloadTask
    }
}