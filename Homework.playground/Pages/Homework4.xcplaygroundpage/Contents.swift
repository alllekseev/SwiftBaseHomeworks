import Foundation

struct Pizza {
    enum Types: String {
        case pepperoni
        case mushroom
        case hawaiian
        case mexican
        case marinara
    }

    enum ExtraToppings: String {
        case pepperoniSausages = "pepperoni sausages"
        case tomatoes
        case cheese
    }

    enum Crust: String {
        case thin
        case thick
    }

    var price: Double
    var type: Types
    var crust: Crust
    var toppings: [ExtraToppings]
}

class Pizzeria {
    private var pizzas: [Pizza]

    init(pizzas: [Pizza]) {
        self.pizzas = pizzas
    }

    func addPizza(_ pizza: Pizza) {
        self.pizzas.append(pizza)
    }

    func getAllPizzaz() -> [String] {
        var menu = [String]()
        var toppings = [String]()

        pizzas.forEach { pizza in
            var toppings = [String]()
            pizza.toppings.forEach {
                toppings.append($0.rawValue)
            }
            var description = """
                Name: \(pizza.type.rawValue)
                Crust: \(pizza.crust.rawValue)
                Topping: \(toppings)
                Price: \(pizza.price)
            """

            menu.append(description)
        }

        return menu
    }
}

let pepperoni = Pizza(
    price: 19.99,
    type: .pepperoni,
    crust: .thick,
    toppings: [.cheese, .pepperoniSausages])

let mexican = Pizza(
    price: 35.99,
    type: .mexican,
    crust: .thin,
    toppings: [.cheese, .tomatoes])

let pizzeria = Pizzeria(pizzas: [pepperoni, mexican])

pizzeria.getAllPizzaz().forEach { print("\($0) \n") }
