//
//  QuizView.swift
//  OXQuiz
//
//  Created by cha_nyeong on 2023/06/20.
//

import SwiftUI
import AVFoundation

struct OptionQuizView: View {
    
    //화면 디자인을 위한 기기 사이즈
    @State var heightDevice = UIScreen.main.bounds.size.height
    @State var widthDevice = UIScreen.main.bounds.size.width
    //맞춘 개수 틀린 개수
    @State var correctCnt: Int = 0
    @State var wrongCnt: Int = 0
    //퀴즈번호
    @State var quizCnt: Int = 1
    //퀴즈 문제 꾸러미
    //    @State var currentQuiz: Quiz = quizzes.randomElement() ?? quizzes[0]
    @State var quizQuestion: String = quizzes[0].question
    @State var quizOptions: [String] = quizzes[0].qOptions
    @State var quizAnswer: Int = quizzes[0].qAnswer
    //
    
    
    var body: some View {
        VStack{
            ZStack(alignment: .top) {
                Group{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: heightDevice * 1 , alignment: .center)
                        .foregroundColor(.optionRandom)
                        .edgesIgnoringSafeArea(.top)
                        .edgesIgnoringSafeArea(.leading)
                        .edgesIgnoringSafeArea(.trailing)
                    RoundedRectangle(cornerRadius: 0)
                        .frame(height: heightDevice * 0.13, alignment: .center)
                        .foregroundColor(.white)
                        .edgesIgnoringSafeArea(.top)
                        .edgesIgnoringSafeArea(.leading)
                        .edgesIgnoringSafeArea(.trailing)
                    RoundedRectangle(cornerRadius: 12)
                        .offset(y: heightDevice * 0.165)
                        .frame(width: widthDevice * 0.9, height: heightDevice * 0.3, alignment:.center)
                        .foregroundColor(.white)
                        .edgesIgnoringSafeArea(.top)
                        .edgesIgnoringSafeArea(.leading)
                        .edgesIgnoringSafeArea(.trailing)
                    RoundedRectangle(cornerRadius: 12)
                        .offset(y: heightDevice * 0.525)
                        .frame(width: widthDevice * 0.9, height: heightDevice * 0.065, alignment:.center)
                        .foregroundColor(.white)
                        .edgesIgnoringSafeArea(.top)
                        .edgesIgnoringSafeArea(.leading)
                        .edgesIgnoringSafeArea(.trailing)
                    RoundedRectangle(cornerRadius: 12)
                        .offset(y: heightDevice * 0.605)
                        .frame(width: widthDevice * 0.9, height: heightDevice * 0.065, alignment:.center)
                        .foregroundColor(.white)
                        .edgesIgnoringSafeArea(.top)
                        .edgesIgnoringSafeArea(.leading)
                        .edgesIgnoringSafeArea(.trailing)
                    RoundedRectangle(cornerRadius: 12)
                        .offset(y: heightDevice * 0.685)
                        .frame(width: widthDevice * 0.9, height: heightDevice * 0.065, alignment:.center)
                        .foregroundColor(.white)
                        .edgesIgnoringSafeArea(.top)
                        .edgesIgnoringSafeArea(.leading)
                        .edgesIgnoringSafeArea(.trailing)
                    RoundedRectangle(cornerRadius: 15)
                        .offset(y: heightDevice * 0.765)
                        .frame(width: widthDevice * 0.9, height: heightDevice * 0.065, alignment:.center)
                        .foregroundColor(.white)
                        .edgesIgnoringSafeArea(.top)
                        .edgesIgnoringSafeArea(.leading)
                        .edgesIgnoringSafeArea(.trailing)
                }
                VStack (alignment: .center) {
                    Group{
                        Spacer()
                        HStack {
                            Spacer()
                            Spacer()
                            Text("맞춘 개수: \(correctCnt)개")
                                .font(.title2)
                            Text("틀린 개수: \(wrongCnt)개")
                                .font(.title2).padding()
                            Spacer()
                            Button {
                                optionQreset()
                            } label: {
                                Image(systemName: "gobackward").resizable().frame(width: widthDevice * 0.085, height: widthDevice * 0.09)
                            }
                            Spacer()
                        }
                        Spacer()
                        HStack {
                            Text("Quiz. \(quizCnt) ")
                                .padding(.leading,30)
                                .font(.title2)
                                .bold()
                            Spacer()
                        }
                        Text("\(quizQuestion)")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                            .frame(width: widthDevice * 0.9, height: heightDevice * 0.21)
                        Spacer()
                    }
                    Group{
                        Spacer()
                        Button {
                            optionbtnClick(1)
                        } label: {
                            Text("\(quizOptions[0])")
                                .font(.title2)
                                .bold()
                                .multilineTextAlignment(.trailing)
                                .frame(width: widthDevice * 0.9, height: heightDevice * 0.07)
                        }
                        
                        Button {
                            optionbtnClick(2)
                        } label: {
                            Text("\(quizOptions[1])")
                                .font(.title2)
                                .bold()
                                .multilineTextAlignment(.trailing)
                                .frame(width: widthDevice * 0.9, height: heightDevice * 0.07)
                        }
                        
                        Button {
                            optionbtnClick(3)
                        } label: {
                            Text("\(quizOptions[2])")
                                .font(.title2)
                                .bold()
                                .multilineTextAlignment(.trailing)
                                .frame(width: widthDevice * 0.9, height: heightDevice * 0.07)
                        }
                        
                        Button {
                            optionbtnClick(4)
                        } label: {
                            Text("\(quizOptions[3])")
                                .font(.title2)
                                .bold()
                                .multilineTextAlignment(.trailing)
                                .frame(width: widthDevice * 0.9, height: heightDevice * 0.07)
                        }
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        }.onAppear{
            loadData()
            makeDictionary()
        }
    }
    
    func optionbtnClick(_ index : Int) {
        //내가 누른 번호
        quizCnt += 1
        if quizAnswer == index {
            correctCnt += 1
            
        } else {
            wrongCnt += 1
        }
        let currentQuiz = quizzes.randomElement() ?? quizzes[0]
        quizQuestion = currentQuiz.question
        quizOptions = currentQuiz.qOptions
        quizAnswer = currentQuiz.qAnswer
    }
    func optionQreset() {
        quizCnt = 1
        correctCnt = 0
        wrongCnt = 0
    }
    func loadData() {
        let currentQuiz = quizzes.randomElement() ?? quizzes[0]
        quizQuestion = currentQuiz.question
        quizOptions = currentQuiz.qOptions
        quizAnswer = currentQuiz.qAnswer
    }
    func makeDictionary() {
        for (q,o,a) in quizTuple {
            var newDict = [String: Any]()
            newDict.updateValue(q, forKey: "Q")
            newDict.updateValue(o, forKey: "Option")
            newDict.updateValue(a, forKey: "A")
            quizzes_2.append(newDict)
        }
        
        for quiz in quizzes_2 {
            print("quiz: \(quiz)")
        }
    }
}

struct OptionQuizView_Previews: PreviewProvider {
    static var previews: some View {
        OptionQuizView()
    }
}
