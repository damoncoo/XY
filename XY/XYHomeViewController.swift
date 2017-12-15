//
//  ViewController.swift
//  XY
//
//  Created by Darcy on 15/12/2017.
//  Copyright © 2017 Darcy. All rights reserved.
//

import UIKit

class XYHomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tableView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // 获取请求
    func fetchData() -> Void {
        let dict = Dictionary<String, Any>.init()
        let request = XYRequest.init()
        request.get()().pathing()("/").parametering()(dict).response(responseBlock: { (response, error) in

            
            
        }).send()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell.init()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
    
}

