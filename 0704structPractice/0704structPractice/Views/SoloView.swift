//
//  SoloView.swift
//  0704structPractice
//
//  Created by 남현정 on 2023/07/04.
//

import SwiftUI

struct SoloView: View {
    
    var solo: SoloIdol
    
    var body: some View {
        List {
//            Text("\(solo.name)")
            
            AsyncImage(url: URL(string: solo.imageURLString)) { image in
                
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height: 300, alignment: .center)
            
            Text("\(solo.debut)")
            
            Text("\(solo.genderString)")
            
            if let team = solo.Team {
                Text("소속팀 : \(team)")

            }
            
    
        }.navigationTitle("\(solo.name)")
    }
}

struct SoloView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SoloView(solo: Jokwon)
        }
    }
}
