//
//  enum.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/02.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

// enum에서 원시값을 사용할 수 있다
// enum의 이름: 타입을 지정하여 원시타입의 값을 사용 가능하다
enum Number: Int {
    case zero = 0
    case one = 1
    case two            // case 를 지날 때 마다 자동으로 1 씩 커지기 때문에 = 2 는 생략 가능하다
}

// 정수 타입 뿐만 아니라 Hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있다.
enum Lang: String {
    case swift = "swift"
    case java = "java"
    case python = "python"
    case javaScript
}

// 열거형에는 method가 들어갈 수 있다
enum Month {
    case jan, feb, mar
    case apr, may, jun
    case jul, aug, sep
    case oct, nov, dec
    
    func printSeason() {
        switch self {
        case .mar, .apr, .may:
            print("봄")
        case .jun, .jul, .aug:
            print("여름")
        case .sep, .oct, .nov:
            print("가을")
        case .dec, .jan, .feb:
            print("겨울")
        }
    }
}

func enumEx() {
    var day: Weekday = Weekday.mon    // or day = Weekday.mon (최소한 타입은 명시하여야 함)
    day = .tue
    print(day)
    
    switch day {
    case .mon, .tue, .wed, .thu:
        print("평일")
    case .fri:
        print("불금")
    case .sat, .sun:
        print("주말")
        // default가 생략된 이유는 모든 경우의 case를 작성하였기 때문이다.
        // 만약 위의 case에서 하나의 case가 빠지게 된다면 default를 작성하여야 한다
    }
    
    // rawValue를 꺼내어 사용 가능하다
    print("Number is \(Number.two.rawValue)")
    
    print("lang is \(Lang.swift.rawValue)")
    print("lang is \(Lang.javaScript.rawValue)")    // case 이름인 javaScript가 출력
    // Lang.javaScript.rawValue == javaScript
    
    // rawValue를 통해 초기화 할 수 있다
    // rawValue가 case에 해당되지 않을 수 있으므로 rawValue를 통해 초기화 한 인스턴스는 Optional type이다
    if let java = Lang(rawValue: "java") {
        print(java.rawValue)
    } else {
        print("nil")
    }
    
    Month.dec.printSeason()
}
