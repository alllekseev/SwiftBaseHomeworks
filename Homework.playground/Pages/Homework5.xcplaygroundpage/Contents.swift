import Foundation

protocol Menu {
    var title: String { get }
    var price: Double { get }
}

struct Tea: Menu {

    enum TeaType: String {
        case black
        case green
        case fruit
    }

    var title: String
    var price: Double

    var name: String {
        return "\(title) tea"
    }
}

class Cafe {
    private var menuItems: [Menu]

    init(menuItems: [Menu]) {
        self.menuItems = menuItems
    }

    func add(item: Menu) {
        menuItems.append(item)
    }
}

class FirstCafe: Cafe {
    override func add(item: Menu) {
        super.add(item: item)

        print("Price is \(item.price)")
    }
}

class SecondCafe: Cafe { }
class ThirdCafe: Cafe { }


final class VendingMachine: FirstCafe { }

