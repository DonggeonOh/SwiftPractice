//
//  main.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/01.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

let numbers = [1, 2, 3, 4, 5]

// 기존 내부의 값에서 2배 만큼 증가
// 여러가지 방식의 클로저 축약 표현
numbers.map({(number: Int) -> Int in
	return number * 2
})
numbers.map({(number: Int) in
	return number * 2
})
numbers.map({
	return $0 * 2
})
// 클로저의 축약표현을 간결하게 표현
let mapResult = numbers.map({ $0 * 2 })
print(mapResult)

// 짝수인 값만 걸러냄
let filterResult = numbers.filter({ $0 % 2 == 0 })
print(filterResult)

// 컨테이너 내부의 값을 모두 더함
// 첫 번째 파라미터는 초기 값을 의미
let reduceFesult = numbers.reduce(0, +)
print(reduceFesult)
