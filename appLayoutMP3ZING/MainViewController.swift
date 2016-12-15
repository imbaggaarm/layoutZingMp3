//
//  MainViewController.swift
//  appLayoutMP3ZING
//
//  Created by Dung Duong on 12/7/16.
//  Copyright © 2016 Tai Duong. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    static let cellID = "cellID"
    var arrOfSongs = Array<String>()
    
    lazy var tableView: UITableView = {
        let temp = UITableView(frame: .zero, style: .plain)
        temp.delegate = self;
        temp.dataSource = self;
        temp.backgroundColor = .white
        temp.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        return temp
    }()
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: MainViewController.cellID, for: indexPath)
        cell.backgroundColor = UIColor.blue
        return cell
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        view.addConstraintsWithFormat(format: "V:|[v0]|", views: tableView)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: tableView)
        getData()
    }
    func getData()
    {
//        let urlString = "http://imbaggaarm.esy.es/danhsachHostinger.php?cot=tenBaiHat"
//        let url = NSURL(string: urlString)!
//        let data = NSData(contentsOf: url as URL)!
//        let ds: String = String.init(data: data as Data, encoding: String.Encoding.utf8)!
//        print(ds)
        let urlString2: String = "http://imbaggaarm.esy.es/danhsachHostinger.php?cot=tenBaiHat"
        let url2: URL = URL(string: urlString2)!
        let request: URLRequest = URLRequest(url: url2)
        let session: URLSession = URLSession.shared
        session.dataTask(with: request, completionHandler:
        {
          (data, respond, error) in do
            {
                let result = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers)
                print(result)
          }catch{}
        }).resume()
    }

}

