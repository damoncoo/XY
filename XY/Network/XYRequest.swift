//
//  XYRequest.swift
//  XY
//
//  Created by Darcy on 15/12/2017.
//  Copyright © 2017 Darcy. All rights reserved.
//
typealias RequestMethodsBlock = ()-> XYRequest
typealias RequestPathBlock = (_ path : String)-> XYRequest
typealias RequestParametersBlock = (_ para : Dictionary<String,Any >)-> XYRequest
typealias RequestResponseBlock = (_ response : Dictionary<String, Any> , _ error : Error)-> Void

import UIKit
import Alamofire

public class XYRequest : NSObject {
    
    var method : HTTPMethod = .get //函数
    var basUrlString = "https://xy.seungyu.cn/"
    var path = ""
    var parameters : Dictionary <String ,Any> = Dictionary.init()
    var responseBlock : RequestResponseBlock?
    
    public override init() {
        super.init()
    }
    
    //MARK:发送组成请求
    func baseURL(url : String) -> XYRequest{
        self.basUrlString = url
        return self
    }
    
    func get() -> RequestMethodsBlock{
        return {()-> XYRequest in
            self.method = .get
            return self
        }
    }
    func post() -> RequestMethodsBlock{
        return {() -> XYRequest in
            self.method = .post
            return self
        }
    }
    func pathing() -> RequestPathBlock{
        return { (_ path : String) -> XYRequest in
            self.path = path
            return self
        }
    }
     func parametering() -> RequestParametersBlock{
        return {(_ para : Dictionary) -> XYRequest in
            self.parameters = para
            return self
        }
    }
    
    func response(responseBlock : @escaping RequestResponseBlock) -> XYRequest {
        self.responseBlock = responseBlock
        return self
    }
    
    func send() -> Void {
        let requestComplete: (HTTPURLResponse?, Result<String>) -> Void = { response, result in
            
        }
        let request = Alamofire.request(self.basUrlString, method: self.method, parameters: self.parameters)
        request.responseString { response in
            requestComplete(response.response, response.result)
        }
        request.responseJSON { (jsonData) in
            
        }
    }
    //MARK:- 参数解析
    
}
