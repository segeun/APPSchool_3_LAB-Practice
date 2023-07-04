//
//  detailView.swift
//  0704structPractice
//
//  Created by 남현정 on 2023/07/04.
//

import SwiftUI

struct SingerView: View {
    var company: Company
    
    var body: some View {
//        NavigationStack {
            List{
                Section {
                    AsyncImage(url: URL(string: company.imageURLString)) { image in
                        
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 300, height: 300, alignment: .center)
                    
                    Text("대표 : \(company.ceo)")
                    Text("시가총액 : \(company.marketCap)")
                    
                }
                Section {
                    //List했더니 안됨 -> ForEach
                    ForEach(company.groupSingers) {group in
                        
                        NavigationLink {
                            GroupView(group: group)
                        }label: {
                            Text("\(group.name)")
                        }
                        
                    }
                }
                    
                Section {
                    ForEach(company.soloSingers) {solo in
                        
                        NavigationLink {
                            SoloView(solo: solo)
                        }label: {
                            Text("\(solo.name)")
                        }
                        
                    }
                
                    
                }.navigationTitle("\(company.name)")
            }
//        }
    }
}

struct detailView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationStack {
            SingerView(company: companies[1])
        }
    }
}
