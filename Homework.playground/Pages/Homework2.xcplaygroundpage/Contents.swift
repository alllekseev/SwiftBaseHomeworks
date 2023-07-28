//: [Homework 1](@previous)

import Foundation

// MARK: Task 1

func calculateAnnualPercentage(from amount: Double,
                               with annualPercentage: Double,
                               years period: Double) -> Double {
    let accumulation = amount * annualPercentage * period / 100
    return amount + accumulation
}

print(calculateAnnualPercentage(from: 1_000_000, with: 5, years: 3))

// MARK: Task 2

enum Pizza: String {
    case pepperoni = "Pepperoni"
    case veronese = "Veronese"
    case diablo = "Diablo"
}

// MARK: Task 3

func getPizzaName(pizza: Pizza) -> String {
    pizza.rawValue
}
