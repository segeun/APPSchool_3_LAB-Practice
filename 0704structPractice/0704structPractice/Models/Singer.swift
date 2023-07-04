//
//  Singer.swift
//  0704structPractice
//
//  Created by 남현정 on 2023/07/04.
//

import Foundation

struct Company: Identifiable {
    /*
     데이터 구조나 크기가 작을때는 forEach id 써주시는게 좋고,
     꾸조체 크기가 크고 데이터 양이 많으면 UUID()사용해주는 편이 좋다고 합니다
     */
    var id: UUID = UUID()
    var name: String
    var groupSingers: [GroupIdol]
    var soloSingers: [SoloIdol]
    
    var ceo: String //대표
    var marketCap: Int //시가총액
    
//    var imageURL: URL
    var imageURLString: String
    
}

struct GroupIdol: Idol, Group {
    var id: UUID = UUID()
    var memerNum: Int
    
    var members: [String]

    
    var name: String
    var debut: String
    
//    var imageURL: URL
    var imageURLString: String
    
    
}

struct SoloIdol: Idol, Solo {
    var id: UUID = UUID()
    var name: String
    
    var debut: String
    
//    var imageURL: URL
    
    var imageURLString: String
    
    var gender: String
    
    var genderString: String {

        gender == "M" ? "남자가수" : "여자가수"
    
    }
    
    var Team: String?
    

}
