//
//  instance.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/02.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var age: Int
    var nickName: String?    // 초기 값이 꼭 필요하지 않은 프로퍼티는 옵셔널 타입 사용
    var pet: Dog?
    var child: Person?

    convenience init(name: String, age: Int, nickName: String) {
        self.init(name: name, age: age)    // class 내부의 init을 사용
        self.nickName = nickName
    }

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    init?(age: Int, name: String) {
        self.age = age
        self.name = name
    }

    deinit {
      if let petName = pet?.breed, let childName = child?.name {
        print("\(self.name)이 \(childName) 에게 \(petName)을 인도합니다")
        self.pet?.owner = child
      }
    }
}

class Dog {
    var breed: String
    var owner: Person!    // 암시적 추출 옵셔널 사용

    init(breed: String) {
        self.breed = breed
    }

    func info() {
        print("개의 품종은 \(breed)이고 소유자는 \(owner.name) 입니다")
    }
}

class Cat {
    var breed: String
    var age: Int
    var nickName: String?

    // 실패 가능한 이니셜라이저
    init?(breed: String, age: Int) {
        // age의 값이 음수거나 name의 값이 비어있다면 nil 반환
        if breed.isEmpty || age < 0 {
            return nil
        }
        // 아닌 경우 초기 값 할당
        self.breed = breed
        self.age = age
    }
}

func instance() {
    // 이니셜라이저 예제
    let donggeon:Person = Person(name: "Donggeon", age: 24)
    let chow: Dog = Dog(breed: "Chow Chow")

    // chow.info()    (X) owner의 값이 nil 이므로 오류 발생
    chow.owner = donggeon
    chow.info()

    // 실패 가능한 이니셜라이저 예제
    let cat1: Cat? = Cat(breed: "British Shorthair", age: 5)
    let cat2: Cat? = Cat(breed: "", age: 3)    // nil을 반환 받는다
    let cat3: Cat? = Cat(breed: "Scottish Fold", age: 7)

    print(cat1)
    print(cat2)    // nil 출력
    print(cat3)

    
    // 디이니셜라이저 예제
    var parent:Person? = Person(age: 20, name: "Parent")
    parent?.child = Person(name: "Child", age: 0)
    parent?.pet = Dog(breed: "Chow")

    parent = nil
}
