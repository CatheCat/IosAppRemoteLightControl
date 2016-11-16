//
//  ViewController.swift
//  My UDP Test
//
//  Created by Joe Lai on 2016/11/9.
//  Copyright © 2016年 Code Desire Technology Co., Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let client: UDPClient = UDPClient(addr: "172.20.10.10", port: 13000)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        let (success, msg) = client.close()
        
        if (success) {
            print(msg)
        }
        else {
            print("Error. " + msg)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func sendCmd(cmd: String) {
        let (success, msg) = client.send(str: cmd)
        
        if (success) {
            print(msg)
        }
        else {
            print("Error. " + msg)
        }
    }
    
    @IBAction func PowerON() {
        sendCmd(cmd: "ON")
    }
    
    @IBAction func PowerOff() {
        sendCmd(cmd: "OFF")
    }
    
    @IBAction func Red() {
        sendCmd(cmd: "REDON")
    }
    
    @IBAction func Green() {
        sendCmd(cmd: "GREENON")
    }
    
    @IBAction func Blue() {
        sendCmd(cmd: "BLUEON")
    }
    
    @IBAction func RedOff() {
        sendCmd(cmd: "REDOFF")
    }
    
    @IBAction func GreenOff() {
        sendCmd(cmd: "GREENOFF")
    }
    
    @IBAction func BlueOff() {
        sendCmd(cmd: "BLUEOFF")
    }
    
    @IBAction func BlinkOn() {
        sendCmd(cmd: "BLINKON")
    }
    
    @IBAction func BlinkOff() {
        sendCmd(cmd: "BLINKOFF")
    }
    
    @IBAction func Quit() {
        exit(0)
    }

}

