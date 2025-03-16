import UIKit

/*
 Вам предстоит разработать систему для обработки данных о студентах. Система должна уметь:

 1.  Хранить информацию о студентах: Для каждого студента необходимо хранить следующую информацию:
     *   Имя (String)
     *   Возраст (Int)
     *   Оценки по предметам (Dictionary, где ключ - название предмета (String), значение - оценка (Int))
     *   Набор (Set) посещенных факультативов (String)

     Используйте кортеж для представления данных об одном студенте: (name: String, age: Int, grades: [String: Double], optionalSubjects: Set<String>)

 2.  Создать массив студентов: Создайте массив, содержащий данные о нескольких студентах (минимум 5).

 3.  Реализовать функции для обработки данных:
     *   calculateAverageGrade(student: Student) -> Double?: Функция должна принимать кортеж студента и возвращать его средний балл по всем предметам. Если у студента нет оценок, функция должна вернуть nil.

     *   findStudentsByAge(students: [Student], age: Int) -> [Student]: Функция должна принимать массив студентов и возраст, и возвращать новый массив, содержащий только студентов указанного возраста. Используйте функцию высшего порядка filter.

     *   getTopStudents(students: [Student], top: Int) -> [(name: String, averageGrade: Double)]: Функция должна принимать массив студентов и количество "top", и возвращать массив кортежей (name: String, averageGrade: Double), содержащий информацию о "top" лучших студентах по среднему баллу.  Используйте функции высшего порядка map, filter, sorted и prefix. Если для каких-то студентов не удалось вычислить средний балл (отсутствуют оценки) - их учитывать не нужно.

     *   getUniqueOptionalSubjects(students: [Student]) -> Set<String>:  Функция должна принимать массив студентов и возвращать множество, содержащее все уникальные названия факультативов, которые посещают студенты из массива. Используйте функцию высшего порядка reduce или flatMap.

 4.  Вывести результаты: Выведите на консоль:

     *   Информацию о всех студентах (имя, возраст, средний балл, посещаемые факультативы).
     *   Список студентов определенного возраста (например, 20 лет).
     *   Список топ-3 лучших студентов по среднему баллу.
     *   Список всех уникальных факультативов, посещаемых студентами.

 Бонус:
 •  Реализуйте функцию, которая будет находить студента с самым большим количеством посещаемых факультативов.
 */

typealias Student = (name: String, age: Int, grades: [String: Int], optionalSubjects: Set<String>)

let students: [Student] = [
    ("Alice", 20, ["Math": 8, "Physics": 9, "English": 7], ["Computer Science", "Art"]),
    ("Bob", 21, ["Math": 9, "Physics": 10, "English": 8], ["Computer Science"]),
    ("Charlie", 20, ["Math": 7, "Physics": 8], ["Art"]),
    ("David", 22, ["Math": 8, "English": 9], ["Computer Science", "Art"]),
    ("Eve", 21, ["Physics": 10, "English": 9], ["Computer Science"]),
    ]
    

func calculateAverageGrade(_ student: Student) -> Double {
    let sumOfGrades = student.grades.values.reduce(0, +)
    return Double(sumOfGrades) / Double(student.grades.count)
 
}
//print(calculateAverageGrade(students[0]))

func findStudentByAge(_ students: [Student], _ age: Int) -> [Student] {
    //let filteredStudents = students.filter { student in student.age == age }
    let filteredStudents = students.filter { $0.age == age }
    return filteredStudents
}


func getTopStudentsByAverageGrade(_ students: [Student], _ top: Int) -> [(name: String, averageGrade: Double)] {
    let sortedStudentsByAverageGrade = students.sorted { calculateAverageGrade($0) > calculateAverageGrade($1) }
        /*
         сортируем массив студентов по убыванию средней оценки,
         вычисляем среднюю оценку для первого студента, вычисляем среднюю оценку для второго студента,
         сравниваем средние оценки, чтобы отсортировать студентов по убыванию.
        */
    let topStudentsNamesAndAverageGrades: [(name: String, averageGrade: Double)] = sortedStudentsByAverageGrade[0..<top].map { student in
        (name: student.name, averageGrade: calculateAverageGrade(student))
    }
    /*
     берём только первые top студентов (так как они уже отсортированы по убыванию).
     преобразуем каждого студента в кортеж, снова вычисляем среднюю оценку.
     */
    return topStudentsNamesAndAverageGrades
}



func getUniqueOptionalSubjects(_ students: [Student]) -> Set<String> {
    let uniqueOptionalSubjects: Set<String> = students.flatMap(\.optionalSubjects).reduce(into: []) { result, optionalSubject in
        result.insert(optionalSubject)
    }
    return uniqueOptionalSubjects
}



for student in students {
    
    print("Имя: \(student.name)")
    print("Возраст: \(student.age)")
    print("Средний балл: \(calculateAverageGrade(student))")
    print("Факультативы: \(student.optionalSubjects)")
    print("--------------------")
}

print("A list of students of a certain age (e.g. 20 years old).:  \(findStudentByAge(students, 20))")
print("--------------------")
print("List of top 3 best students by GPA.: \(getTopStudentsByAverageGrade(students, 3))")
print("--------------------")
print("List of all unique electives taken by students.: \(getUniqueOptionalSubjects(students))")
