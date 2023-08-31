import Foundation

struct Worker {
    enum Position {
        case cashier
        case cook
    }

    var name: String
    var salary: Double
    var position: Position
}

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
    var workers: [Worker]
    var tables: [Table]

    init(pizzas: [Pizza], workers: [Worker]) {
        self.pizzas = pizzas
        self.workers = workers
        tables = [Table(seats: 4)]
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

class Table {
    var seats: Int
    weak var pizzeria: Pizzeria?

    init(seats: Int) {
        self.seats = seats
    }

    func hasFreeSeats(for guests: Int) -> Bool {
        return guests <= seats
    }
}
