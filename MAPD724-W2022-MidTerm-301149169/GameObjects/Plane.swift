//
//  Plane.swift
//  ICE1
//
//  Created by Inderjit Singh on 2022-01-23.
//

import GameplayKit
import SpriteKit

class Plane : Gameobject
{
    init()
    {
        super.init(imageString: "plane", initialScale: 1.5)
Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds() {
        if(position.y >= 185 - halfwidth!)
        {
            position.y = 185 - halfwidth!
        }
        if(position.y <= -185 + halfwidth!)
        {
            position.y = -185 + halfwidth!
        }
    }
    override func Reset()
    {
        
    }
    override func Start()
    {
        zPosition = 2
    }
    override func Update()
    {
        CheckBounds()
    }
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
