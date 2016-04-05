//
//  DishRepository.swift
//  FoodPlanner
//
//  Created by Maria Stochholm on 21/03/16.
//  Copyright © 2016 SWIFT. All rights reserved.
//

import Foundation

protocol IDishRepository
{
    func getAllDishes() -> Array<Dish>
    func addDish(d: Dish)
    func getDishById(dishId: Int) -> Dish
    func removeDish(d: Dish)
}

class DishRepository: IDishRepository {
    var dishes:[Dish]
    
    init() {
        
        dishes  = []
        var dish:Dish
        
        dish = Dish(id : 1, name: "*JOKER*", mainIngredient: "*JOKER*", quarentineDate : NSDate(), quarentinePeriod : 7)
        self.dishes.append(dish)
        dish = Dish(id : 2, name: "Kylling i karry", mainIngredient: "Kylling", quarentineDate : NSDate(), quarentinePeriod : 2)
        self.dishes.append(dish)
        dish = Dish(id : 3, name: "Mørbrad karryret", mainIngredient: "Mørbrad", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 4, name: "Æggekage", mainIngredient: "Æg", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 5, name: "Hel Kylling", mainIngredient: "Kylling", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 6, name: "Ristaffel", mainIngredient: "Kylling", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 7, name: "Stegt Laks", mainIngredient: "Laks", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 8, name: "Burger", mainIngredient: "Hakket Okse", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 9, name: "Wokret", mainIngredient: "Rejer", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 10, name: "Fiskefrikadeller", mainIngredient: "Fiskefars", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 11, name: "Spaghetti", mainIngredient: "Hakket Okse", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 12, name: "Hakkebøf", mainIngredient: "Hakket Okse", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 13, name: "Pandekager", mainIngredient: "Æg", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 14, name: "Risengrød", mainIngredient: "Ris", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 15, name: "Pizza", mainIngredient: "Div. Kød", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 16, name: "Pita", mainIngredient: "Salat", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 17, name: "Rugbrød", mainIngredient: "Pålæg", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 18, name: "Grillmad", mainIngredient: "Div. Kød", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 19, name: "Frikadeller", mainIngredient: "Hakket Svin", quarentineDate : NSDate(), quarentinePeriod : 7oj)
        self.dishes.append(dish)
        dish = Dish(id : 20, name: "Engelske bøffer", mainIngredient: "Oksekød", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 21, name: "Suppe", mainIngredient: "Rejer", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 22, name: "Piratens pølsegryde", mainIngredient: "Pølser", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        dish = Dish(id : 23, name: "Pulled Pork", mainIngredient: "Nakkefillet", quarentineDate : NSDate(), quarentinePeriod : 1)
        self.dishes.append(dish)
        
        
        
        dishes.append(dish)
        
    }
    
    func getAllDishes() -> Array<Dish>
    {
        return dishes
    }
    func addDish(d: Dish)
    {
        dishes.append(d)
    }
    func getDishById(dishId: Int) -> Dish
    {
        return dishes[dishId]
    }
    func removeDish(d: Dish)
    {
        dishes = dishes.filter({ $0 !== d }) 
    }
}