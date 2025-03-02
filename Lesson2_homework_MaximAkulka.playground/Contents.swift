import UIKit

var greeting = "Hello, playground"

// 1. Создать новый Playground +

 
/* 2. Написать переменные и константы всех базовых типов данных: Int, Bool, Float,
 Double, String. Наделите переменные смыслом. У чисел вывести их минимальные и максимальные значения (Int8/16...
 UInt...), а у строки – количество символов.
*/
 
var userGreting: String = "Hello, user!"
let userName = "Maxim"

let userAge: Int = 25
var userNumber: Int8 = 12

var userIsStudent: Bool = true
let userDeveloper = false


var userHeight: Float = 1.70
var userWeight: Double = 70.500

print (Int.max)
print (Int.min)
print (UInt.max)
print (Int8.max)
print (Int8.min)
print (UInt8.max)
print (UInt8.min)

var initialPhrase = userGreting + ", " + userName + "!"
print (initialPhrase)
print (initialPhrase.count)



 /*3. Написать различные выражения с приведением типа. Минимум 6 выражений. */
  
let strNumber = "42"
let intNumber = Int(strNumber)
print(type(of: intNumber))

let someNumber: Int = 7
let text = "number: " + String(someNumber)
print (text)
print(type(of: text))

let doubleValue: Double = 3.99
let intValue = Int(doubleValue)
print(type(of: intValue))

let floatValue: Float = 3.99
let intValue2 = Int(floatValue)
print(type(of: intValue2))

let intNumber2: Int = 10
let doubleNumber = Double(intNumber2)
print(doubleNumber)
print(type(of: doubleNumber))

let intNumber3: Int = 11
let floatNumber = Float(intNumber3)
print(floatNumber)
print(type(of: floatNumber))



 /*4. Произвести различные вычисления с математическими операторами (умножение,
 деление, сложение, вычитание, деление с остатком). Выводить результат в консоль в таком виде: 3
 + 2 = 5 (использовать интерполяцию строк). */
  
let a = 5
let b = 2
let phrase1 = "I"
let phrase2 = "love"
let phrase3 = "Swift"

print("\(phrase1) \(phrase2) \(phrase3)")
print(phrase1 +  " " + phrase2 + " " + phrase3 + " " + "!")

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b)

  

 //5. С помощью if-else необходимо вывести в консоль, ночь ли сегодня (isNight).

let hour = 6

if hour >= 0 && hour < 6 {
    print ("it's night now")
} else if hour >= 6 && hour <= 12  {
    print ("it's morning")
} else if hour >= 12 && hour <= 18  {
    print ("it's day now")
} else {
    print ("it's evening")
}
 


let time = 1
 
switch time {
case 0..<6:
    print("it's night now")
case 6..<12:
    print("it's morning")
case 12..<18:
    print("it's day now")
case 18..<24:
    print("it's evening")
default:
    break
}

 //6. Сделать проверку: является ли число четным: 13, 2, 20, 21, 76. (Число X является четным/нечетным!)
  
let number = 13

if number % 2 == 0 {
    print("This number is even")
} else {
    print("This number is odd")
}




/* 7*. В переменной day лежит какое-то число от 1 до 31 (вы задаете сами любое).
 Определить, в какую декаду месяца попадает это число (в первую, вторую или
 третью). */

 
let day = 25
 
switch day {
case 0 ... 10:
    print("it's firstDecade")
case 11 ... 20:
    print("it's secondDecade")
case 21...31:
    print("it's thirdDecade")
default:
    break
}
 
 
 /*8*. Дана строка, состоящая из символов, например, “bbppeeyy”. Проверить, что
 первым символом этой строки является буква “a” (или любая другая). Если это так –
 вывести 'да', в противном случае - ‘нет’. Затем поменяйте строку, чтобы условие
 соблюдалось. Поэкспериментируйте с разными строками. */

let str = "bbppeeyy"

if str.first == "a" {
    print("yes")
} else {
    print("no")
}



 /*
  9**. Вывести таблицу умножения в консоль с помощью циклов for in.
 */

for a in 1...10 {
    for b in 1...10 {
        print("\(a) * \(b) = \(a * b)")
    }
}
