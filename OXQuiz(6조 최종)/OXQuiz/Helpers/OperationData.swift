//
//  OperationData.swift
//  OXQuiz
//
//  Created by cha_nyeong on 2023/06/20.
//

import Foundation
import SwiftUI

enum Operations: String, CaseIterable {
    case multiple = "✖️"
    case divider = "➗"
    case subtract = "➖"
    case plus = "➕"
}

extension Color {
    static let mavueColor = Color(hex: 0xcdb4db)
    static let lightPinkColor = Color(hex: 0xffc8dd)
    static let hotPinkColor = Color(hex: 0xffafcc)
    static let lightBlueColor = Color(hex: 0xbde0fe)
    static let skyBlueColor = Color(hex: 0xa2d2ff)
    
    static var random: Color {
        get {
            var randomArray:[Color] = [.mavueColor,.hotPinkColor,.lightBlueColor,.lightPinkColor,.skyBlueColor]
            var randomInt = Int.random(in: 0...4)
            return randomArray[randomInt]
        }
    }
    
    init(hex: UInt, alpha: Double = 1.0) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
}


func makeExpResult(_ num1: Int,_ num2: Int,_ ops:String) -> Double {
    //로직 쓰자
    //1. 생성 좀 있을법 한 O X를 맞출만한 그런 결과값을 만들고 싶다라는 로직 (오차 적게 나는 식을 만들고 싶다.)
    let randomNum = Int.random(in: 0...1)
    let wrongRandomNum = Int.random(in: 0...5)
    var resultNum = 0.0
    
    
    if randomNum == 0 {
        //임의로 옳은 문장
        resultNum = calcNum(num1,num2,ops)
    } else {
        //임의로 틀리는 문장
        // 0번일때는 num-1 처리 1 num+1 처리 2 num2 -1 3 num2 +1 4 결과값에서 -1 5 결과값에서 -1
        switch wrongRandomNum {
        case 0:
            resultNum = calcNum(num1-1,num2,ops)
        case 1:
            resultNum = calcNum(num1+1,num2,ops)
        case 2:
            resultNum = calcNum(num1,num2-1,ops)
        case 3:
            resultNum = calcNum(num1,num2+1,ops)
        case 4:
            resultNum = calcNum(num1,num2,ops) - 1
        case 5:
            resultNum = calcNum(num1,num2,ops) + 1
        default:
            break
        }
    }
    
    return resultNum
}

func calcNum(_ num1:Int,_ num2: Int,_ ops: String) -> Double {
    
    var exOps = ""
    switch ops {
    case "✖️":
        exOps = "*"
    case "➗":
        exOps = "/"
    case "➖":
        exOps = "-"
    case "➕":
        exOps = "+"
    default:
        break
    }
    var resultDou = 0.0
    switch exOps {
    case "*":
        resultDou = Double(num1 * num2)
    case "/":
        resultDou = Double(num1 / num2)
    case "-":
        resultDou = Double(num1 - num2)
    case "+":
        resultDou = Double(num1 + num2)
    default:
        break
    }
    return resultDou
}
