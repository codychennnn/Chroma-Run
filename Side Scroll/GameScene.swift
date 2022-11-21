//
//  GameScene.swift
//  Side Scroll
//
//  Created by Cody Chen on 10/8/22.
//

import SwiftUI
import SpriteKit
import GameplayKit



class GameScene: SKScene {
    
    
    //let deviceHeight = UIScreen.mainScreen().bounds.height
    //let deviceWidth = UIScreen.mainScreen().bounds.width
    
    
    let background = SKSpriteNode(imageNamed: "Background")
    let mainCharacter = SKSpriteNode(imageNamed: "Main Character")
    let moon = SKSpriteNode(imageNamed: "Moon")
    let bar = SKSpriteNode(imageNamed: "Rainbow Bar")
    
    override func didMove(to view: SKView){
        
        // background
        background.position = CGPoint(x: frame.midX, y: frame.midY)
        background.zPosition = -1
        background.size = CGSize(width: size.width, height: size.height)
        addChild(background)
        
        // mainCharacter
        mainCharacter.zPosition = 1
        mainCharacter.position = CGPoint(x: -(size.width/3), y: -(size.height/8))
        mainCharacter.size = CGSize(width: size.height/4, height: size.height/4)
        addChild(mainCharacter)
        
        // moon
        moon.zPosition = 2
        moon.position = CGPoint(x: -(size.width/3), y: size.height/3)
        moon.size = CGSize(width: size.height/4, height: size.height/4)
        addChild(moon)
        
        // rainbow bar
        bar.position = CGPoint(x: 1.75*size.width/8, y: 3.5*size.height/8)
        bar.size = CGSize(width: size.width/2, height: size.height/20)
        
        addChild(bar)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
