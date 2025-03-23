import UIKit

/*
 1. Разработка иерархии классов для геометрических фигур:

   •  Создайте базовый класс Shape с общими свойствами (например, цвет) и методом calculateArea().
   •  Создайте подклассы Circle, Rectangle, Triangle, наследующиеся от Shape.
   •  Переопределите метод calculateArea() в каждом подклассе для вычисления площади соответствующей фигуры.
   •  Добавьте свойства, специфичные для каждой фигуры (например, радиус для круга, длина и ширина для прямоугольника).
   •  Создайте массив объектов типа Shape и выведите площадь каждой фигуры.

 */

class Shape {
    var color: String
    
    init(color: String) {
        self.color = color
    }
    
    func calculateArea() -> Double {
        return 0
    }
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double, color: String) {
        self.radius = radius
        super.init(color: color)
    }
    
    override func calculateArea() -> Double {
        return .pi * radius * radius
    }
}

class Rectangle: Shape {
    var length: Double
    var width: Double
    
    init(length: Double, width: Double, color: String) {
        self.length = length
        self.width = width
        super.init(color: color)
    }
    
    override func calculateArea() -> Double {
        return length * width
    }
}

class Triangle: Shape {
    var base: Double
    var height: Double
    
    init(base: Double, height: Double, color: String){
        self.base = base
        self.height = height
        super.init(color: color)
    }
    
    override func calculateArea() -> Double {
        0.5 * base * height
    }
}

let shapes: [Shape] = [
    Circle(radius: 10, color: "Grin"),
    Rectangle(length: 5, width: 8, color: "Blue"),
    Triangle(base: 5, height: 9, color: "Green")
]

for shape in shapes {
    print("Фигура цвета \(shape.color) имеет площадь \(shape.calculateArea())")
}



/*
 2. Создание структуры для представления контакта в телефонной книге:

   •  Создайте структуру Contact со свойствами:
     *  firstName (String)
     *  lastName (String)
     *  phoneNumber (String)
     *  email (String?) (опциональный email).
   •  Создайте функцию, которая принимает массив структур Contact и строку для поиска. Функция должна возвращать новый массив Contact, содержащий только те контакты, у которых имя или фамилия содержат строку для поиска (без учета регистра).
 */

struct Contact {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String?
}

func findContact(in contacts: [Contact], by searchString: String) -> [Contact] {
    return contacts.filter {
        $0.firstName.lowercased().contains(searchString.lowercased()) ||
        $0.lastName.lowercased().contains(searchString.lowercased())
    }
}

let contacts: [Contact] = [
    .init(firstName: "Anna", lastName: "Borisova", phoneNumber: "+7 (911) 123-45-67", email: "alice@example.com"),
    .init(firstName: "Schmit", lastName: "Rosberg", phoneNumber: "+7 (922) 987-65-43", email: nil),]

let result = findContact(in: contacts, by: "rosberg")
print(result)

