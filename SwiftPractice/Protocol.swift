//
//  Protocol.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/09.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

protocol Language {
	var lang: String { get set }
	var paradigm: String { get }
	
	init(lang: String, paradigm: String)
	
	func execute()
}

struct swift: Language {
//	프로퍼티 요구 준수
	var lang: String
//	paradigm 은 읽기 전용이기 때문에 var로 선언 할 수 없다
	let paradigm: String
	
//	읽기 전용 프로퍼티 요구는 연산 프로퍼티로 대체 가능하다
//	var lang: String { return "swift" }
	
//	읽기 쓰기 프로퍼티도 연산 프로퍼티로 대체 가능하다
//	var _lang: String
//	var lang: String {
//		get {
//			return _lang
//		}
//		set {
//			self._lang = newValue
//		}
//	}
	
	// 이니셜라이저 요구 준수
	init(lang: String, paradigm: String) {
		self.lang = lang
		self.paradigm = paradigm
	}
	
	// 메서드 요구 준수
	func execute() {
		print("\(lang), \(paradigm)")
	}
}

protocol Readable {
	func read()
}

protocol Writeable {
	func write()
}

protocol ReadSpeakable: Readable {
	func speak()
}

protocol ReadWritSpeakable: Readable, Writeable {
	func speak()
}

struct SomeType: ReadWritSpeakable {
	func speak() {
		print("speak")
	}
	
	func read() {
		print("read")
	}
	
	func write() {
		print("write")
	}
}

class SuperClass: Readable {
	func read() { }
}

class SubClass: SuperClass, Writeable, ReadWritSpeakable {
	func write() { }
	func speak() { }
}

func `protocol`() {
	let parent = SuperClass()
	let child = SubClass()
	
	print(parent is Readable)
	print(parent is ReadWritSpeakable)
	
	print(child is Readable)
	print(child is ReadWritSpeakable)
	
	let parentAny: Any = parent
	let childAny: Any = child
	
	guard let parentReadable = parentAny as? Readable else {
		print("parent is not Readable")
		return
	}
	parentReadable.read()
	
//	guard let parentRWable = childAny as? ReadWritSpeakable else {
//		print("parent is not ReadWriteable")
//		return
//	}
//	print("\(parentRWable.read()), \(parentRWable.write()), \(parentRWable.speck()),")
	
	guard let childReadable = childAny as? Readable else {
		print("child is not Readable")
		return
	}
	childReadable.read()
	
	guard let childRWable = childAny as? ReadWritSpeakable else {
		print("child is not RWable")
		return
	}
	childRWable.read()
	childRWable.write()
	childRWable.speak()
}
