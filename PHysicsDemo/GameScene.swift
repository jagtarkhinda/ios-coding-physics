//
//  GameScene.swift
//  PHysicsDemo
//
//  Created by Parrot on 2019-02-13.
//  Copyright © 2019 Parrot. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let circle = SKSpriteNode(imageNamed: "circle")
    let square = SKSpriteNode(imageNamed: "square")
    let triangle = SKSpriteNode(imageNamed: "triangle")
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.white
        
        //set position
        circle.position = CGPoint(x:self.size.width*0.25, y:self.size.height/2)
        square.position = CGPoint(x:self.size.width/2, y:self.size.height/2)
        triangle.position = CGPoint(x:self.size.width*0.75, y:self.size.height/2)
        
        
        //see slides (intro to physics)
        //adding physics body by coding
        
        //circle hitbox
        circle.physicsBody = SKPhysicsBody(circleOfRadius: 35)
        circle.physicsBody?.affectedByGravity = false;
        circle.physicsBody?.isDynamic = false
        
        //rectangle hitbox
        square.physicsBody = SKPhysicsBody(rectangleOf: square.size)
        square.physicsBody?.affectedByGravity = false;
        square.physicsBody?.isDynamic = false
        
        addChild(circle)
        addChild(square)
        addChild(triangle)
        
       
    }
}
