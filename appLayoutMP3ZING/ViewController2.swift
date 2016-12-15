//
//  ViewController2.swift
//  appLayoutMP3ZING
//
//  Created by Dung Duong on 12/9/16.
//  Copyright © 2016 Tai Duong. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imgV = UIImageView()
        imgV.frame = CGRect(x: 0, y: 0, width: 300, height: 400)
        imgV.contentMode = .scaleAspectFit
        imgV.layer.cornerRadius = 20
        imgV.layer.borderWidth = 20
        imgV.layer.borderColor = UIColor.black.cgColor
        imgV.backgroundColor = UIColor.blue
        self.view.backgroundColor = UIColor.rgb(red: 192, green: 241, blue: 116)
        view.addSubview(imgV)
        imgV.loadImageFromURL(urlString:"http://imbaggaarm.esy.es/image/Unknown.jpeg")
    }
}
