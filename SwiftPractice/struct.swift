//
//  struct.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/02.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

func structEx() {
    struct Company {
      let name: String = "Apple"    // 불변 property - 값의 변경 X
      var assets: Int = Int.max        // 가변 property - 값의 변경 O

      // static keyword가 붙으면
      // Company 라고 하는 타입에서 사용할 수 있는 type property
      static var typeProperty: Int = 100
      
      // 인스턴스 메서드
      func instanceMethod() {
        print("Instance method")
      }
      
      // 타입 메서드
      static func typeMethod() {
        print("Type method")
      }
    }

    // 가변 인스턴스
    var apple = Company()
    // 불변 인스턴스
    let samsung = Company()

    apple.assets = 0
    // samsung.assets = 0        (X) 불변 인스턴스이기 때문에 값의 변경이 불가하다

    // 타입 property와 method 사용방법
    Company.typeProperty = 300
    Company.typeMethod()
    
    print(apple.assets)
    print(samsung.assets)
    print(Company.typeProperty)
}
