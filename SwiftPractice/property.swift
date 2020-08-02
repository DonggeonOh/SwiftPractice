//
//  property.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/02.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

struct Student {
    static var typeDesc: String = "학생"
    lazy var grade: Character = "A"
    
    // 프로퍼티 감시자
    var name: String = "" {
        willSet(newName) {
            print("이름이 \(name)에서 \(newName)로 변경될 예정입니다")
        }
        didSet(oldName) {
            print("이름이 \(oldName)에서 \(name)로 변경되었습니다")
        }
    }
    
    // 프로퍼티 감시자
    var krAge: Int = 0 {
        // 매개변수를 생략 할 경우 willSet - newValue, didSet - oldValue를 사용 할 수 있다
        willSet {
            print("나이가 \(krAge)에서 \(newValue)로 변경될 예정입니다")
        }
        didSet {
            print("이름이 \(oldValue)에서 \(krAge)로 변경되었습니다")
        }
    }
    var course: String = "Swift"
    
    var westAge: Int {
        get {
            return krAge - 1
        }
        set(value) {            // 매개변수 생략가능 - 암시적으로 newValue를 통해 매개변수 접근
            krAge = value + 1   // 매개변수를 생략한 경우 - krAge = newValue + 1
        }
        // 프로퍼티 감시자와 연산 프로퍼티 기능을 동시에 사용할 수 없다
        /* willSet {
         
         }
         didSet {
         
         } */
    }
    
    var info: String {
        get {
            return "저는 \(course)강의를 듣는 \(name)이고 \(krAge)살 입니다"
        }
    }
    
    static var info: String {
        get {
            return "학생 입니다"
        }
    }
}

func property() {
    var stud = Student()
    
    // 인스턴스 저장 프로퍼티 사용
    stud.name = "오동건"
    print(stud.name)
    
    // 인스턴스 연산 프로퍼티 사용
    print(stud.westAge)
    stud.westAge = 23
    print(stud.westAge)
    print(stud.info)
    
    // 타입 저장 프로퍼티 사용
    print(Student.typeDesc)
    
    // 타입 연산 프로퍼티 사용
    print(Student.info)
    
    // 지연 저장 프로퍼티 사용
    print(stud.grade)
}
