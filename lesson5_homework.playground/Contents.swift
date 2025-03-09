import UIKit

/*
ДЗ Занятие 5 Optional and Enum

 1. Конвертер валют с обработкой ошибок:

 •     Создайте enum Currency с кейсами для USD, EUR, BYN. Каждому кейсу присвойте rawValue типа String с соответствующим кодом валюты.
 •     Создайте функцию getExchangeRate(from: Currency, to: Currency) -> Double?, которая принимает две валюты и возвращает курс обмена между ними. Если для какой-то пары валют курс не найден, функция должна возвращать nil.
 •   Создайте функцию convertCurrency(amount: Double, from: Currency, to: Currency) -> Double?, которая принимает сумму, исходную валюту и целевую валюту и возвращает сконвертированную сумму. Используйте функцию getExchangeRate для получения курса обмена. Если курс обмена не найден, функция должна возвращать nil.
*/

enum Currency: String {
    case USD = "USD"
    case EUR = "EUR"
    case BYN = "BYN"
}

func getExchangeRate(from: Currency, to: Currency) -> Double? {
    switch (from, to) {
    case (.USD, .EUR):
        return 0.85
    case (.EUR, .USD):
        return 1.15
    case (.USD, .BYN):
        return 2.1
    case (.BYN, .USD):
        return 0.045
    case (.EUR, .BYN):
        return 1.95
    case (.BYN, .EUR):
        return 0.33
    default:
        return nil
    }
}

getExchangeRate(from: .USD, to: .EUR)

func convertCurrency(amount: Double, from: Currency, to: Currency) -> Double? {
    guard let rate = getExchangeRate(from: from, to: to) else {
        return nil
    }
    return amount * rate
}

print(convertCurrency(amount: 100, from: .BYN, to: .EUR)!)

/*
 2. Анализатор результатов экзамена:
 
•   Создайте enum Grade с кейсами A, B, C, D, F.  Каждому кейсу присвойте rawValue типа Int, представляющий числовой балл (например, A = 90, B = 80 и т.д.).
•   Создайте функцию getLetterGrade(score: Int) -> Grade?, которая принимает числовой балл (Int) и возвращает соответствующую буквенную оценку (Grade).  Если балл находится вне допустимого диапазона (например, меньше 0 или больше 100), функция должна возвращать nil.  Реализуйте логику определения оценки на основе диапазонов баллов (например, 90-100 -> A, 80-89 -> B и т.д.).
•   Создайте функцию printExamResult(name: String, score: Int) -> String, которая принимает имя студента (String) и его балл (Int) и возвращает строку с результатом экзамена. Используйте функцию getLetterGrade для получения буквенной оценки.

    •   Если функция getLetterGrade возвращает оценку, строка должна иметь формат: "[Имя студента] получил [Буквенная оценка] (Балл: [Числовой балл])".
    •   Если функция getLetterGrade возвращает nil, строка должна иметь формат: "[Имя студента] получил недопустимый балл: [Числовой балл]".

•   Продемонстрируйте работу функции printExamResult с разными входными данными, включая допустимые и недопустимые баллы.

*/

enum Grade: Int {
    case A = 90
    case B = 80
    case C = 70
    case D = 60
    case F = 0
}

///


