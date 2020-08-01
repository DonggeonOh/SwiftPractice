//
//  collection-type.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/01.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

func collectionType() {
    // Array의 선언과 사용법
    // var integers: [Int] = [] or var integers = [int]()
    var integers: Array<Int> = Array<Int>()
    integers.append(10)
    integers.append(50)
    integers.append(100)
    // integers.append(1.23) - error

    print(integers.contains(10))    // true
    print(integers.contains(1))     // false

    integers.remove(at: 0)       // 10 is removed
    integers.removeLast()        // 100 is removed (Last value is removed)
    integers.removeAll()         // []

    print(integers.count)

    // integers[0] 비어있는 값 접근은 위험하다

    let immutableArray = [1, 2, 3]      // 값의 변경이 불가능한 array

    // Dictionary의 선언과 사용법
    // var dict: [String: Any] = [:] or var dict = [String:Any]()
    var dict: Dictionary<String, Any> = [String: Any]()
    dict["someKey"] = "value"
    dict["anotherKey"] = 100
    dict["someKey"] = "dictionary"      // somekey의 값(value)이 dictionary로 수정
    dict.removeValue(forKey: "anotherKey")
    dict["someKey"] = nil                        // [:] empty

    let letDict: [String: String] = ["name": "donggeon", "gender": "male"]        // 값의 변경이 불가능
    // let dictValue: String = letDict["name"] (X) letDict["name"]에 해당하는 value가 값이 있을 수도 없을 수도 있기 때문
    
    var intSet: Set<Int> = Set<Int>()
    intSet.insert(1)
    intSet.insert(2)
    intSet.insert(3)
    intSet.insert(4)
    intSet.insert(5)
    intSet.insert(5)        // Set은 중복된 값이 없다는 것을 보장해 주기 때문에 5는 한번만 들어 간다.
    print(intSet)           // [2, 4, 3, 5, 1] - 값의 순서는 보장하지 않는다
    
    print(intSet.contains(1))    // true
    print(intSet.contains(10))   // false

    print(intSet.remove(1))            // 1이 지워진다
    print(intSet.removeFirst())        // 처음 index의 값이 지워진다
    print(intSet.count)                    // 3 가지고 있는 갯수 출력

    let setA: Set<Int> = [1, 2, 3, 4, 5]    // 실제로 Set는 값이 순차적으로 저장되지 않는다
    let setB: Set<Int> = [3, 4, 5, 6, 7]
    let union: Set<Int> = setA.union(setB)    // A와 B의 합집합
    let sortedUnion: [Int] = union.sorted()    // 정렬된 값을 배열로 반환
    print(sortedUnion)
    let intersection: Set<Int> = setA.intersection(setB)    // 교집합
    print(intersection)
    let subtracting: Set<Int> = setA.subtracting(setB)        // 차집합
    print(subtracting)
}
