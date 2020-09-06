//
//  Food_TrackerTests.swift
//  Food TrackerTests
//
//  Created by Mykyta Nihmatshaiev on 06.09.2020.
//  Copyright © 2020 Mykyta Nihmatshaiev. All rights reserved.
//

import XCTest
@testable import Food_Tracker

class Food_TrackerTests: XCTestCase {
    
    //MARK: Meal Class tests
    func testMealInitializationSucceeds(){
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }

    func testMealInitializationFails(){
        let negativeRatingMeal = Meal.init(name: "Zero", photo: nil, rating: -3)
        XCTAssertNil(negativeRatingMeal)
        
        let emptyRatingMeal = Meal.init(name: "", photo: nil, rating: 5)
        XCTAssertNil(emptyRatingMeal)
        
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
    
}
