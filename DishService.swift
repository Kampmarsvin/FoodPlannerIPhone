//
//  DishService.swift
//  FoodPlanner
//
//  Created by Maria Stochholm on 22/03/16.
//  Copyright © 2016 SWIFT. All rights reserved.
//

import Foundation

protocol IDishService
{
    func getAllDishes() -> Array<Dish>
    func addDish(d: Dish)
    func getDishById(dishId: Int) -> Dish
    func removeDish(d: Dish)
    func selectDishesWithDistinctMainIngredient(dishes: Array<Dish>) -> Array<Dish>
    func randomizeDishes(inout dishes: Array<Dish>)
    func selectSevenDishes(dishes: Array<Dish>) -> Array<Dish>
    func getNonQuarentinedDishes(dishes: Array<Dish>) -> Array<Dish>
    func selectSevenDistinctDishes() -> Array<Dish>
    func addDishesToQuarentine(dishes: Array<Dish>)
    
}

class DishService : IDishService {
    
    let dishRepository: IDishRepository
    
    init(dishRepository: DishRepository) {
        self.dishRepository = dishRepository
    }
    
    func getAllDishes() -> Array<Dish>
    {
        return dishRepository.getAllDishes()
    }
    func addDish(d: Dish)
    {
        dishRepository.addDish(d)
    }
    func getDishById(dishId: Int) -> Dish
    {
        return dishRepository.getDishById(dishId)
    }
    func removeDish(d: Dish)
    {
        dishRepository.removeDish(d)
    }
    func selectDishesWithDistinctMainIngredient(dishes: Array<Dish>) -> Array<Dish>
    {
        var encountered = Array<String>()
        
        var result: [Dish] = []
        for value in dishes {
            if encountered.contains(value.mainIngredient!) {
            }
            else {
                encountered.insert(value.mainIngredient!, atIndex: 0)
                result.append(value)
            }
        }
        return result
    }
    
    func randomizeDishes(inout dishes: Array<Dish>)
    {
        let e = dishes
        dishes = e.shuffle()
    }
    func selectSevenDishes(dishes: Array<Dish>) -> Array<Dish>
    {
       return Array(dishes.prefix(7))
    }
    func getNonQuarentinedDishes(dishes: Array<Dish>) -> Array<Dish>
    {
        return dishes.filter({$0.quarentineDate < NSDate()})
    }
        
    func selectSevenDistinctDishes() -> Array<Dish>
    {
        var dishes = getAllDishes()
        dishes = getNonQuarentinedDishes(dishes)
        randomizeDishes(&dishes)
        dishes = selectDishesWithDistinctMainIngredient(dishes)
        dishes = selectSevenDishes(dishes)
        addDishesToQuarentine(dishes)
        return dishes
    }
    func addDishesToQuarentine(dishes: Array<Dish>)
    {
            for d in dishes {
                d.quarentineDate = NSCalendar.currentCalendar().dateByAddingUnit(
                    [.Day],
                    value: d.quarentinePeriod,
                    toDate: NSDate(),
                    options: [])!
                
            }
    }
    
   
        
}
