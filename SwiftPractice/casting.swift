//
//  casting.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/02.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

class People {
    var name: String = ""
    
    func info() {
        print("이름은 \(name) 입니다")
    }
}

class Student: People {
    var course: String = ""
    
    func printCourse() {
        print("배우는 과목은 \(course) 입니다")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    
    func printSchool() {
        print("전공은 \(major) 입니다")
    }
}

func typeCasting() {
    var sam: People = People()
    var alice: Student = Student()
    var romeo: UniversityStudent = UniversityStudent()
    
    var value: Bool
    
    value = sam is People                            // true
    value = sam is Student                        // false
    value = sam is UniversityStudent    // false

    value = alice is People                            // true
    value = alice is Student                        // true
    value = alice is UniversityStudent    // false

    value = romeo is People                            // true
    value = romeo is Student                        // true
    value = romeo is UniversityStudent    // true

    // 사람입니다 출력
    if sam is UniversityStudent {
      print("대학생입니다")
    } else if sam is Student {
      print("학생입니다")
    } else if sam is People {
      print("사람입니다")
    }

    // 사람입니다 출력
    // case에 is 키워드 사용 가능
    switch alice {
    case is People:
      print("사람입니다")
    case is Student:
      print("학생입니다")
    case is UniversityStudent:
      print("대학생입니다")
    default:
      print("아무것도 아닙니다")
    }

    // 대학생입니다 출력
    switch romeo {
    case is UniversityStudent:
      print("대학생입니다")
    case is Student:
      print("학생입니다")
    case is People:
      print("사람입니다")
    default:
      print("아무것도 아닙니다")
    }
    
    sam = Student() as People
    alice = UniversityStudent() as Student
    // romeo = People() as UniversityStudent    (X) 컴파일 오류
    
    var rose: Any = People() as Any    // as Any 키워드 생략 가능
    var lily: AnyObject = Student() as AnyObject // as AnyObject 키워드 생략 가능
    
    sam = People()
    alice = Student()
    romeo = UniversityStudent()
    
    var optCast: Student?

    optCast = sam as? Student    // nil
    print(optCast)
    optCast = alice as? UniversityStudent // nil
    print(optCast)
    optCast = romeo as? UniversityStudent
    print(optCast)
    optCast = romeo as? Student
    print(optCast)
    // optCast = romeo as? Person (X) Student 타입에 Person 타입의 value를 할당을 할 수 없음
    
    var optForcedCast: Student

    optForcedCast = romeo as! Student
    print(optForcedCast)
    // 런타임 오류
    // optForcedCast = alice as! UniversityStudent
    // optForcedCast = sam as! Student
    // optForcedCast = sam as! Student
}
