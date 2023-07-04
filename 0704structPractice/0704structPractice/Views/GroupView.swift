//
//  GroupView.swift
//  0704structPractice
//
//  Created by 남현정 on 2023/07/04.
//

import SwiftUI

struct GroupView: View {
    
    var group: GroupIdol
    var body: some View {
        List {
//            Text("\(group.name)")
            
            AsyncImage(url: URL(string: group.imageURLString)) { image in
                
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height: 300, alignment: .center)
            
            Text("\(group.debut)")
            
            Text("\(group.memerNum)명")
            
            Section {
                ForEach(group.members, id: \.self) { member in
                    Text("\(member)")
                }
            } header: {
                Text("멤버")
                    .font(.system(size: 20,weight: .bold))
                    .foregroundColor(.black)
            }
    
        }.navigationTitle("\(group.name)")
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            GroupView(group: EXO)
        }
    }
}
