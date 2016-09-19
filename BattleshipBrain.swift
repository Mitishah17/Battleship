//
//  BattleshipBrain.swift
//  Battleship
//
//  Created by Miti Shah on 9/19/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

class BattleshipBrain {
    let totalButton = 100
    var numButtonMiss = 83
    var numButtonHit = 17
    
    init(numButtonHit:Int){
        self.numButtonHit = numButtonHit
    }
    init(numButtonMiss:Int){
        self.numButtonMiss = numButtonMiss
    }
    
    
    
    fileprivate enum State{
        case hittable
        case miss
    }
    
    private  var ships = [State]()
    
    //var board = [Int]()
    //for x in 1...5 {
    //board.append(["O"] * x)
    //}
    
    
    
    func setupShip(){
        ships = Array(repeating: .miss, count: numButtonMiss)
        ships[Int(arc4random_uniform((UInt32(numButtonHit))))] = .hittable
        //Array(repeating: .hittable, count: numCardsHit)
        
    }
    
    func checkPoint(_ shipsIn: Int) -> Bool{
        assert(shipsIn < ships.count)  //helps with debugging
        return ships[shipsIn] == .hittable
    }
}
