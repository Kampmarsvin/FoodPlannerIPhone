//
//  Dish.swift
//  FoodPlanner
//
//  Created by Maria Stochholm on 21/03/16.
//  Copyright © 2016 SWIFT. All rights reserved.
//

import Foundation

class Dish : Hashable
{
    init(id: Int, name: String, mainIngredient: String, quarentineDate: NSDate, quarentinePeriod: Int){
        self.id = id
        self.name = name
        self.mainIngredient = mainIngredient
        self.quarentineDate = quarentineDate
        self.quarentinePeriod = quarentinePeriod
    }
    var id = 0
    var name: String?
    var mainIngredient: String?
    var quarentineDate = NSDate()
    var quarentinePeriod = 0
    var hashValue: Int {
        return self.id
    }
}
func == (lhs: Dish, rhs: Dish) -> Bool {
    return lhs.id == rhs.id
}