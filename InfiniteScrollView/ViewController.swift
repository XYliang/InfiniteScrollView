//
//  ViewController.swift
//  InfiniteScrollView
//
//  Created by 薛银亮 on 16/6/28.
//  Copyright © 2016年 薛银亮. All rights reserved.
//

import UIKit

class ViewController: UIViewController, InfiniteScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imagesURL = ["http://pic38.nipic.com/20140215/12359647_224250202132_2.jpg",
                         "http://img.article.pchome.net/00/35/62/34/pic_lib/wm/Zhiwu37.jpg",
                         "http://www.33.la/uploads/201405sy/xiaoxi/32.jpg",
                         "http://img.pconline.com.cn/images/upload/upc/tx/photoblog/1503/17/c2/3974346_1426551981202_mthumb.jpg",
                         "http://pic38.nipic.com/20140215/12359647_224250202132_2.jpg",
                         "http://img.article.pchome.net/00/35/62/34/pic_lib/wm/Zhiwu37.jpg",
                         "http://www.33.la/uploads/201405sy/xiaoxi/32.jpg",
                         "http://img.pconline.com.cn/images/upload/upc/tx/photoblog/1503/17/c2/3974346_1426551981202_mthumb.jpg"]
       let titles = ["title1","title2","title3","title4","title5", "title2","title3","title4"]
        let view = InfiniteScrollView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width * 0.666), imageURLStrings: imagesURL, placeholderImage: UIImage(named: "demo0.jpg")!, timeInterval: 2, titles: titles)
        view.delegate = self
        self.view.addSubview(view)
    }

    func didTapItem(item: Int) {
        print(item)
    }

}

