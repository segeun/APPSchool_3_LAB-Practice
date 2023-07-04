//
//  ContentView.swift
//  0704structPractice
//
//  Created by 남현정 on 2023/07/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(companies) {company in
                    NavigationLink {
                        SingerView(company: company)
                    }label: {
                        Text("\(company.name)")
                    }
                }
            }.navigationTitle("Entertainment")
     
        }
        //.padding()쓰면 SingerView까지 영향으로 화면 더 작아짐
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
