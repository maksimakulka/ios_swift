import UIKit

//. Написать функции, которая:
// - Будет просто выводить в консоль ”Hello, world!”.

func printHelloWorld() {
    print("Hello, world!")
}
printHelloWorld( )

/*
 - Будет принимать аргумент “имя” и выводить в консоль “Hello, имя” (вызов функции
 должен быть следующим - printHi(“Misha”)). */

func printHi(_ name: String) {
    print("Hello, \(name)")
}
printHi( "Misha")

// - Будет принимать аргумент имя и возвращать строку приветствия “Hello! имя”.

func greetings(_ name: String) -> String {
    return "Hello, \(name)!"
}
let resultGretings = greetings("Max")
print(resultGretings)


/*
 2. Написать функцию, которая принимает две строки и возвращает сумму количества
 символов двух строк.*/

func sumSymbols(_ string1: String, _ string2: String) -> Int {
    return string1.count + string2.count
}
let resultSumSymbols = sumSymbols("Hello", "World")
print(resultSumSymbols)


// 3. Написать функцию, которая выводит в консоль квадрат переданного числа.

func squareNumber(_ number: Int) -> Int {
    return number * number
}
let resultSquareNumber = squareNumber(10)
print(resultSquareNumber)


// 4. Создать функцию, которая принимает параметры и вычисляет площадь круга.

func areaCircle(_ radius: Double) -> Double {
    return .pi * radius * radius
}
let resultAreaCircle = areaCircle(5)
print(resultAreaCircle)

/*
 5. Создать функцию, которая принимает логический тип “ночь ли сегодня” и возвращает
 строку с описанием времени суток. Можно делать с логическим типом, можно делать со временем. */

func timeOfDay(_ isNight: Bool) -> String {
    if isNight {
        return "Ночь"
    } else {
        return "День"
    }
}
let resultTimeOfDay = timeOfDay(false)
print(resultTimeOfDay)

func timeOfDayV2(_ hour: Int) -> String {
    if hour >= 0 && hour < 6 {
        return "it's night now"
    } else if hour >= 6 && hour <= 12 {
        return "it's morning"
    } else if hour >= 12 && hour <= 18 {
        return "it's day now"
    } else if hour >= 18 && hour <= 24 {
        return "it's evening"
    } else {
        return "Incorrect data"
    }
     }
let resultTimeOfDayV2 = timeOfDayV2(13)
print(resultTimeOfDayV2)

/*
 6. Создать функцию, принимающую 1 аргумент — номер месяца (от 1 до 12), и
 возвращающую время года, которому этот месяц принадлежит (зима, весна, лето или
 осень). */

func timeOfYear(number: Int) -> String{
    if number >= 1 && number <= 2 || number == 12 {
        return "winter"
    } else if number >= 3 && number <= 5 {
        return "spring"
    } else if number >= 6 && number <= 8 {
        return "summer"
    } else if number >= 9 && number <= 11 {
        return "autumn"
    } else {
        return "Incorrect data"
    }
}
let resultTimeOfYear = timeOfYear(number: 2)
print(resultTimeOfYear)

func timeOfYearV2(month: Int) -> String{
    switch month {
    case 1...2, 12:
        return "winter"
    case 3...5:
        return "spring"
    case 6...8:
        return "summer"
    case 9...11:
        return "autumn"
    default:
        return "Incorrect data"
    }
}
let resultTimeOfYearV22 = timeOfYearV2(month: 0)
print(resultTimeOfYearV22)


/*
 7. Необходимо Разбить номер телефона на составляющие. Код страны, код оператора, сам номер.
 Используем функции строки: prefix, suffix. */

func parsingPhoneNumber(phoneNumber: String) -> (countryCode: Int, operatorCode: Int, number: Int)? {
    if phoneNumber.hasPrefix("+") {
        let trimmedPhone = phoneNumber.dropFirst()
        
        if let countryCode = Int(trimmedPhone.prefix(3)) {
            let remainingPhone = trimmedPhone.dropFirst(3)
            
            if let operatorCode = Int(remainingPhone.prefix(2)) {
                let numberPart = remainingPhone.dropFirst(2)
                
                if let number = Int(numberPart) {
                    return (countryCode, operatorCode, number)
                }
            }
        }
    }
    return nil
}
                                                 
if let result = parsingPhoneNumber(phoneNumber: "+37544798999") {
    print(result)
} else {
    print ("Error processing number")
}
                                            


/* 8*. Создать функцию, принимающую 1 аргумент — число от 0 до 100, и возвращающую
 true, если оно простое, и false, если сложное. Рекомендую попробовать решать рекурсией, чтобы разобраться как она работает. */


//9*. Создать функцию, которая считает факториал введённого числа.

func factorial(_ x: Int) -> Int {
    if x < 1 {
        return 1
}
return x * factorial(x-1)
}
let resultFactorial = factorial(10)
print(resultFactorial)

/*
 10*. Создать функцию, которая выводит все числа последовательности Фибоначчи до
 введённого индекса. Например fib(n:6) -> 0, 1, 1, 2, 3, 5, 8 */

func fib(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return fib(n - 1) + fib(n - 2)
    }
}
let resultFib = fib(6)
print(resultFib)

