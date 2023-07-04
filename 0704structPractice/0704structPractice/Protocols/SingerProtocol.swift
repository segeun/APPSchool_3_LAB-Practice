//
//  SingerProtocol.swift
//  0704structPractice
//
//  Created by 남현정 on 2023/07/04.
//

import Foundation


protocol Idol: Identifiable {
    var name: String {get}
    var debut: String {get}
    
//    var imageURL: URL {get}
    var imageURLString: String {get}
    
}

protocol Group {
    var memerNum: Int {get}
    var members: [String] {get}
    
}

protocol Solo {
    var gender: String {get}
    var Team: String? {get}
    
}
