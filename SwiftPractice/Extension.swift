//
//  Extension.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/09.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

extension Int {
	var toBinary: String {
		return String(self, radix: 2)
	}
	
	var factorial: Int? {
		guard self > 0 else { return nil }
		var result = 1
		for value in (2...self) {
			result *= value
		}
		return result
	}
	
	init(int: Int) {
		self = int
	}
	
	func multiply(by num: Int) -> Int {
		return self * num
	}
}

func `extension`() {
	print(10.toBinary)
	print(5.factorial)
	print(10.multiply(by: 5))
	print(Int(int: 3))
}
