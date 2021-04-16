//
//  ViewController.swift
//  Snow
//
//  Created by 王冊 on 2021/4/16.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
         super.viewDidLoad()
        
        //漸層背景
         let gradientLayer = CAGradientLayer()
         gradientLayer.frame = view.bounds
         gradientLayer.colors = [
            CGColor(srgbRed: 31/255, green: 62/255, blue: 93/255, alpha: 1),
            CGColor(srgbRed: 237/255, green: 238/255, blue: 239/255, alpha: 1)
         ]
         view.layer.insertSublayer(gradientLayer, at: 0)
        
        //雪花
        let snowEmitterCell = CAEmitterCell()
        snowEmitterCell.contents = UIImage(named: "snowflake")?.cgImage
        //設定每秒發射幾個雪花
        snowEmitterCell.birthRate = 2
        //雪花維持的秒數
        snowEmitterCell.lifetime = 20
        //雪花移動的速度
        snowEmitterCell.velocity = 50
        //雪花的大小
        snowEmitterCell.scale = 3
        //雪花往下落下的加速度
        snowEmitterCell.yAcceleration = 5
        //雪花發射的路徑
        
        let snowEmitterLayer = CAEmitterLayer()
        snowEmitterLayer.emitterCells = [snowEmitterCell]
        view.layer.addSublayer(snowEmitterLayer)
        //雪花發射的路徑
        snowEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -50)
        snowEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        //控制雪花大小的範圍
        snowEmitterCell.scale = 0.5
        snowEmitterCell.scaleRange = 0.3
        //雪花大小改變的速度
        snowEmitterCell.scaleSpeed = -0.02
        //旋轉吧，雪花
        snowEmitterCell.spin = 0.5
        snowEmitterCell.spinRange = 1
        //雪花發射的角度範圍
        snowEmitterCell.emissionRange = CGFloat.pi
        
        
        
        
        
        
     }
    }
        
        

