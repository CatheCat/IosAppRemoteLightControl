//
//  ysocket.swift
//  My UDP Test
//
//  Created by Joe Lai on 2016/11/9.
//  Copyright © 2016年 Code Desire Technology Co., Ltd. All rights reserved.
//

import Foundation

open class YSocket {
    var addr: String
    var port: Int
    var fd: Int32?

    init() {
        self.addr = ""
        self.port = 0
    }
    
    public init(addr a: String, port p: Int) {
        self.addr = a
        self.port = p
    }
}
