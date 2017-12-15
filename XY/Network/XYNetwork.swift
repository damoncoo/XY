//
//  XYNetwork.swift
//  XY
//
//  Created by Darcy on 15/12/2017.
//  Copyright © 2017 Darcy. All rights reserved.
//

import UIKit
import Alamofire

class XYNetwork: NSObject {
    
//    public class func get(dict : NSDictionary) -> DataRequest {
//        return  Alamofire.request("https://baidu.com", method: .get, parameters: nil,
//                                  headers: nil).responseJSON(completionHandler: { response  in
//
//
//
//        })
//    }
    
    
//    public class func post(dict : NSDictionary) -> DataRequest {
//
//
//    }
    public class func get() -> XYRequest {
        return XYRequest.init()
    }
}
