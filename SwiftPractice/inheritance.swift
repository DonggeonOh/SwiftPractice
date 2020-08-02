//
//  inheritance.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/02.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

class Person {
    var name: String = ""
    
    func info() {
        print("저는 \(name) 입니다")
    }
    
    // final 키워드를 사용하여 재정의를 방지 할 수 있다
    final func prevent() {
        print("prevent inheritance")
    }
    
    // 재정의가 불가한 타입 메서드
    static func typeMethod() {
        print("Type method - static keyword")
    }
    
    // 재정의가 가능한 타입 메서드
    class func classMethod() {
        print("Type method - class keyword")
    }
    
    // 재정의가 가능한 타입 메서드라도 final 키워드를 사용하면 재정의 할 수 없다
    // 메서드 앞 static과 final class는 똑같은 역할을 수행한다
    final class func finalClassMethod() {
        print("type method - final class keyword")
    }
}

class Academic: Person {
    var major: String = ""
    
    override func info() {
        print("저는 \(name) 이고 전공은 \(major) 입니다")
    }
    
    override class func classMethod() {
        print("Overriden type method - class keyword")
    }
    
    /* 재정의 할 수 없는 경우
     override func prevent() {
     print("final 키워드를 사용한 메서드, 프로퍼티를 재정의 할 수 없다")
     }
     
     override static func typeMethod() {
     print("static 키워드를 사용한 타입 메서드는 재정의 할 수 없다")
     }
     
     override class func finalClassMethod() {
     print("final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없다")
     } */
}

func inheritance() {
    let person = Person()
    let student = Academic()
    
    person.name = "Person"
    student.name = "Donggeon"
    student.major = "Computer science"
    
    person.info()
    student.info()
    
    person.prevent()
    student.prevent()
    
    Person.typeMethod()
    Academic.typeMethod()
    
    Person.classMethod()
    Academic.classMethod()
    
    Person.finalClassMethod()
    Academic.finalClassMethod()
}
