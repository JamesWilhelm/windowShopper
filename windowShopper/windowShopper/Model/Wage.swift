//
//  Wage.swift
//  windowShopper
//
//  Created by James Wilhelm on 4/20/22.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
