//
//  ViewController.swift
//  Snow
//
//  Created by 王冊 on 2021/4/16.
//

import UIKit
import SpriteKit
import AVFoundation

class ViewController: UIViewController {
    
    //音樂
    let player = AVPlayer()

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
        snowEmitterCell.birthRate = 8
        //雪花維持的秒數
        snowEmitterCell.lifetime = 18
        //雪花移動的速度
        snowEmitterCell.velocity = 55
        //雪花的大小
        snowEmitterCell.scale = 3
        //雪花往下落下的加速度
        snowEmitterCell.yAcceleration = 3
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
        snowEmitterCell.scaleSpeed = -0.01
        //旋轉吧，雪花
        snowEmitterCell.spin = 0.5
        snowEmitterCell.spinRange = 1
        //雪花發射的角度範圍
        snowEmitterCell.emissionRange = CGFloat.pi
        
        //產生 image view
        let deerImageView = UIImageView(frame: CGRect(x: 85, y: 450, width: 300, height: 300))
        view.addSubview(deerImageView)
        
        //產生代表動畫圖片的 UIImage 物件
        let animatedImage = UIImage.animatedImageNamed("20161229123734_wEav8-",duration: 1)
        
        deerImageView.image = animatedImage
    
        //加入音樂
        let fileUrl = Bundle.main.url(forResource: "bensound-tomorrow", withExtension:"mp3")!
                let playerItem = AVPlayerItem(url: fileUrl)
                player.replaceCurrentItem(with: playerItem)
                player.play()
        
    }
}
        
        
        
        
    
        
        

