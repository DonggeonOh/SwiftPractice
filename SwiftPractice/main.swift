//
//  main.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/01.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

print("Hello, World!")

enum MachineError: Error {
	case outOfStock
	case invalidInput
	case insufficientFunds(moneyNeeded: Int)
}

// 기계에는 상품의 가격, 갯수, 현재 입력된 돈을 가진다
class Machine {
	var price = 100
	var item = 10
	var money = 0
	
	// 돈을 입력 받는다
	func receive(money: Int) throws {
		guard money > 0 else {
			throw MachineError.invalidInput
		}
		
		self.money += money
	}
	
	func vend(items: Int) throws -> String {
		guard items > 0 else {
			throw MachineError.invalidInput
		}
		
		guard items * price <= money else {
			let needed = items * price - money
			throw MachineError.insufficientFunds(moneyNeeded: needed)
		}
		
		guard item >= items else {
			throw MachineError.outOfStock
		}
		
		let totalPrice = items * price
		money -= totalPrice
		item -= items
		
		return "\(items) 개 제공"
	}
}

let machine = Machine()
var result: String?

// 첫 번째 오류 처리 방법
do {
	// invalidInput 오류를 catch 한다
	try machine.receive(money: 0)
} catch MachineError.invalidInput {
	print("입력 값이 잘못 되었습니다")
} catch MachineError.outOfStock {
	print("제품의 수량이 부족합니다")
} catch MachineError.insufficientFunds(let moneyNeeded) {
	print("\(moneyNeeded) 원이 부족합니다")
}

// 두 번째 오류 처리 방법
do {
	// 300원 입력
	try machine.receive(money: 300)
} catch /*(let error) 암시적으로 표현 생략 가능*/ {
	switch error {
	case MachineError.invalidInput:
		print("입력 값이 잘못 되었습니다")
	case MachineError.outOfStock:
		print("제품의 수량이 부족합니다")
	case MachineError.insufficientFunds(let moneyNeeded):
		print("\(moneyNeeded) 원이 부족합니다")
	default:
		print("알 수 없는 오류")
	}
}

// 세 번째 오류 처리 방법
// 딱히 케이스 별 오류 처리 필요가 없을 시 catch 구문 내부를 간략화해도 무방하다
do {
	result = try machine.vend(items: 3)
} catch {
	print(error)
}

// 네 번째 오류 처리 방법
// case 별로 오류 처리 할 필요가 없다면 do 구문만 써도 무방하다
do {
	result = try machine.vend(items: 1)
}

// try?
// 별도의 오류처리 결과를 통보받지 않고 오류가 발생했으면 결과 값을 nil로 돌려받을 수 있다
// 정상동작 후에는 옵셔널 타입으로 정상 반환 값을 돌려 받는다

result = try? machine.vend(items: 1)
print(result)
// try!
// 오류가 발생하지 않을 것이라는 강력한 확신을 가질 때 try! 를 사용하면 정상동작 후에 바로 결과 값을 돌려받는다
// 오류가 발생하면 런타임 오류가 발생하여 어플리케이션 동작이 중지된다

result = try! machine.vend(items: 1)
print(result)
