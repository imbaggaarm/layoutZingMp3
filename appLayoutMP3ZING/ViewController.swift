//
//  ViewController.swift
//  appLayoutMP3ZING
//
//  Created by Dung Duong on 12/5/16.
//  Copyright © 2016 Tai Duong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let butRandom: UIButton = {
        let temp = UIButton(type: .system)
        temp.backgroundColor = .blue
        temp.setTitle("Random", for: .normal)
        return temp
    }()
    
    let butBack: UIButton = {
        let temp = UIButton(type: .system)
        temp.backgroundColor = .blue
        temp.setTitle("Back", for: .normal)
        return temp
    }()
    
    
    let butPauConti: UIButton = {
        let temp = UIButton(type: .system)
        temp.backgroundColor = UIColor.darkGray
        temp.setTitle("Pause", for: .normal)
        return temp
    }()
    
    let butNext: UIButton = {
        let temp = UIButton(type: .system)
        temp.backgroundColor = .blue
        temp.setTitle("Next", for: .normal)
        return temp
    }()
    
    let butReplay: UIButton = {
        let temp = UIButton(type: .system)
        temp.backgroundColor = .blue
        temp.setTitle("Replay", for: .normal)
        return temp
    }()
    
    let vOfControlButtons: UIView = {
        let temp = UIView()
        temp.backgroundColor = .yellow
        return temp
    }()
    
    let lblMinValue: UILabel = {
        let temp = UILabel()
        temp.textColor = .white
        temp.backgroundColor = .darkGray
        return temp
    }()
    
    let lblMaxValue: UILabel = {
        let temp = UILabel()
        temp.textColor = .white
        temp.backgroundColor = .darkGray
        return temp
    }()
    
    let sldMinute: UISlider = {
        let temp = UISlider()
        temp.thumbTintColor = .blue
        temp.tintColor = .black
        return temp
    }()
    
    let txtVOfLyrics: UITextView = {
        let temp = UITextView()
        temp.backgroundColor = .darkGray
        
        return temp
    }()
    
    let imgVOfDisk: UIImageView = {
        let temp = UIImageView()
        temp.backgroundColor = .black
        temp.layer.cornerRadius = temp.frame.size.width/2
        temp.clipsToBounds = true
        return temp
    }()
    
    let pageControl: UIPageControl = {
        let temp = UIPageControl()
        temp.numberOfPages = 3
        temp.currentPage = 1
        temp.currentPageIndicatorTintColor = UIColor.purple
        temp.tintColor = .darkGray
        temp.pageIndicatorTintColor = UIColor.darkGray
        return temp
    }()
    
    let lblTitle: UILabel = {
        let temp = UILabel()
        temp.numberOfLines = 2
        temp.textColor = UIColor.white
        temp.backgroundColor = .darkGray
        temp.textAlignment = .center
        temp.text = "What Makes You Beautiful"
        return temp
    }()
    
    let butOff: UIButton = {
        let temp = UIButton(type: .system)
        temp.backgroundColor = .lightGray
        return temp
    }()
    
    
    let butClock: UIButton = {
        let temp = UIButton(type: .system)
        temp.backgroundColor = .lightGray
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let blurEffect: UIBlurEffect = UIBlurEffect(style: .light)
        let vOfBlurEffect = UIVisualEffectView(effect: blurEffect)

        
        view.backgroundColor = .white
        view.addSubview(vOfControlButtons)
        view.addSubview(lblMinValue)
        view.addSubview(sldMinute)
        view.addSubview(lblMaxValue)
        view.addSubview(txtVOfLyrics)
        view.addSubview(imgVOfDisk)
        view.addSubview(lblTitle)
        view.addSubview(pageControl)
        view.addSubview(butOff)
        view.addSubview(butClock)
        
        
        
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: vOfControlButtons)
        view.addConstraintsWithFormat(format: "V:[v0(80)]|", views: vOfControlButtons)
        view.addConstraintsWithFormat(format: "H:|-20-[v0(v2)]-5-[v1]-5-[v2(40)]-20-|", views: lblMinValue, sldMinute, lblMaxValue)
        view.addConstraintsWithFormat(format: "V:[v0(30)]-2-[v1]", views: lblMinValue, vOfControlButtons)
        view.addConstraintsWithFormat(format: "V:[v0(30)]-2-[v1]", views: sldMinute, vOfControlButtons)
        view.addConstraintsWithFormat(format: "V:[v0(30)]-2-[v1]", views: lblMaxValue, vOfControlButtons)
        view.addConstraintsWithFormat(format: "V:|-20-[v0(60)]-[v1(20)]-5-[v2(200)]-20-[v3]-[v4]", views: lblTitle, pageControl, imgVOfDisk, txtVOfLyrics, lblMinValue)
        imgVOfDisk.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imgVOfDisk.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pageControl.widthAnchor.constraint(equalToConstant: 50).isActive = true
        view.addConstraintsWithFormat(format: "H:|-5-[v0(40)]-5-[v1]-5-[v2(40)]-5-|", views: butOff, lblTitle, butClock)
        butOff.centerYAnchor.constraint(equalTo: lblTitle.centerYAnchor).isActive = true
        butClock.centerYAnchor.constraint(equalTo: lblTitle.centerYAnchor).isActive = true
        butOff.heightAnchor.constraint(equalToConstant: 40).isActive = true
        butClock.heightAnchor.constraint(equalTo: butOff.heightAnchor).isActive = true
        imgVOfDisk.layer.cornerRadius = 100
        
        view.addConstraintsWithFormat(format: "H:|-20-[v0]-20-|", views: txtVOfLyrics)
        
        vOfControlButtons.addSubview(butRandom)
        vOfControlButtons.addSubview(butBack)
        vOfControlButtons.addSubview(butPauConti)
        vOfControlButtons.addSubview(butNext)
        vOfControlButtons.addSubview(butReplay)
        addConstraintsForVOfControlButtons()
    }
    func addConstraintsForVOfControlButtons()
    {
        
        butPauConti.translatesAutoresizingMaskIntoConstraints = false
        butPauConti.heightAnchor.constraint(equalToConstant: 60).isActive = true
        butPauConti.heightAnchor.constraint(equalTo: butPauConti.widthAnchor).isActive = true
        butPauConti.centerYAnchor.constraint(equalTo: vOfControlButtons.centerYAnchor).isActive = true
        butPauConti.centerXAnchor.constraint(equalTo: vOfControlButtons.centerXAnchor).isActive = true

        butReplay.translatesAutoresizingMaskIntoConstraints = false
        butReplay.centerYAnchor.constraint(equalTo: vOfControlButtons.centerYAnchor).isActive = true
        butReplay.heightAnchor.constraint(equalTo: butPauConti.heightAnchor, multiplier: 0.8).isActive = true
        butReplay.widthAnchor.constraint(equalTo: butReplay.heightAnchor).isActive = true
        vOfControlButtons.addConstraintsWithFormat(format: "H:[v0]-20-|", views: butReplay)
        
        butRandom.translatesAutoresizingMaskIntoConstraints = false
        butRandom.centerYAnchor.constraint(equalTo: vOfControlButtons.centerYAnchor).isActive = true
        butRandom.widthAnchor.constraint(equalTo: butRandom.heightAnchor).isActive = true
        butRandom.widthAnchor.constraint(equalTo: butReplay.widthAnchor).isActive = true
        vOfControlButtons.addConstraintsWithFormat(format: "H:|-20-[v0]", views: butRandom)
        
        butBack.translatesAutoresizingMaskIntoConstraints = false
        butBack.centerYAnchor.constraint(equalTo: vOfControlButtons.centerYAnchor).isActive = true
        butBack.widthAnchor.constraint(equalTo: butBack.heightAnchor).isActive = true
        butBack.widthAnchor.constraint(equalTo: butPauConti.widthAnchor, multiplier: 0.8).isActive = true
        vOfControlButtons.addConstraint(NSLayoutConstraint.init(item: butBack, attribute: .centerX, relatedBy: .equal, toItem: vOfControlButtons, attribute: .centerX, multiplier: 0.65, constant: 0))
        
        butNext.translatesAutoresizingMaskIntoConstraints = false
        butNext.centerYAnchor.constraint(equalTo: vOfControlButtons.centerYAnchor).isActive = true
        butNext.widthAnchor.constraint(equalTo: butNext.heightAnchor).isActive = true
        butNext.widthAnchor.constraint(equalTo: butBack.widthAnchor, multiplier: 1).isActive = true
        vOfControlButtons.addConstraint(NSLayoutConstraint.init(item: butNext, attribute: .centerX, relatedBy: .equal, toItem: vOfControlButtons, attribute: .centerX, multiplier: 1.35, constant: 0))
        
    
    }
    
}



