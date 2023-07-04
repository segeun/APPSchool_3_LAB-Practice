//
//  QuizView.swift
//  OXQuiz
//
//  Created by cha_nyeong on 2023/06/20.
//

import SwiftUI
import AVFoundation

struct QuizView: View {
    //현재 몇번째 퀴즈 인가?
    let soundNuna = AVSpeechSynthesizer()
    
    @State var quizNumberCnt: Int = 1
    @State var scoreCount: Int = 0
    @State var failCount: Int = 0
    @State var setTenCountMsg = ""
    //디자인을 위한 현재 기기의 가로, 세로 사이즈(zstack b-b)
    @State var heightDevice = UIScreen.main.bounds.size.height
    @State var widthDevice = UIScreen.main.bounds.size.width
    @State var expresultNum: Double = 0.0
    //좌측 숫자, 우측 숫자, 연산자, 결과값을 전부 객체로 생성
    @State var leftNum: Int = Int.random(in: 2...50)
    @State var rightNum: Int = Int.random(in: 2...50)
    @State var operatorSign: Operations = .multiple
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: heightDevice * 0.6 , alignment: .center)
                    .foregroundColor(.random)
                    .edgesIgnoringSafeArea(.top)
                    .edgesIgnoringSafeArea(.leading)
                    .edgesIgnoringSafeArea(.trailing)
                VStack{
                    HStack{
                        Text("Quiz \(quizNumberCnt).")
                            .padding()
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                    }.padding()
                    Spacer()
                    Text("\(leftNum) \(operatorSign.rawValue) \(rightNum) 🟰 \(String(format: "%.2f", expresultNum))")
                        .bold()
                        .font(.title)
                    Spacer()
                    Spacer()
                    HStack {
                        Spacer()
                        Text("Score : \(scoreCount)")
                            .padding(.trailing,20)
                            .font(.title2)
                            .bold()
                    }
                    HStack{
                        Spacer()
                        Button {
                            //O버튼 눌렀을때 처리 할 사항
                            if quizNumberCnt < 11 {
                                btnClick("OK")
                            }
                        } label: {
                            Image("‎CorrectCircleImage").resizable()
                                .frame(width: widthDevice * 0.3, height: widthDevice * 0.3)
                        }.padding()
                        Button {
                            if quizNumberCnt < 11 {
                                btnClick("X")
                            }
                            //X버튼 눌렀을때 처리 할 사항
                        } label: {
                            Image("‎WrongImage").resizable()
                                .frame(width: widthDevice * 0.3, height: widthDevice * 0.3)
                        }.padding()
                        Spacer()
                    }
                    .font(.largeTitle)
                    Spacer()
                    HStack {
                        Button {
                            reset()
                        } label: {
                            Image("ResetImage").resizable()
                                .frame(width: widthDevice * 0.18, height: widthDevice * 0.15)
                        }
                        .font(.title3)
                        .padding([.leading,.trailing],20)
                        Spacer()
                        Text("\(setTenCountMsg)")
                        Spacer()
                        Text("\(failCount)개 틀림ㅋ")
                            .padding(.trailing,20)
                            .font(.title3)
                    }
                }
            }
        }.onAppear {
            operatorSign = Operations.allCases.randomElement() ?? .divider
            expresultNum = makeExpResult(leftNum, rightNum, operatorSign.rawValue)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func reset() {
        quizNumberCnt = 1
        scoreCount = 0
        failCount = 0
        leftNum = Int.random(in: 2...50)
        rightNum = Int.random(in: 2...50)
        operatorSign = Operations.allCases.randomElement() ?? .divider
        expresultNum = makeExpResult(leftNum, rightNum, operatorSign.rawValue)
        setTenCountMsg = ""
    }
    
    func btnClick(_ mark: String) {
        let correctMsg = "정답이다"
        let wrongMsg = "땡이다"
        var msg = ""
        quizNumberCnt += 1
        if quizNumberCnt == 11 {
            setTenCountMsg = "10개까지만 가능합니다"
        }
        if mark == "OK" {
            let realResult = calcNum(leftNum, rightNum, operatorSign.rawValue)
            if realResult == expresultNum {
                scoreCount += 1
                msg = correctMsg
            } else {
                failCount += 1
                msg = wrongMsg
            }
        } else if mark == "X" {
            let realResult = calcNum(leftNum, rightNum, operatorSign.rawValue)
            if realResult == expresultNum {
                failCount += 1
                msg = wrongMsg
            } else {
                scoreCount += 1
                msg = correctMsg
            }
        }
        soundNuna.stopSpeaking(at: .immediate)
        let utterance = AVSpeechUtterance(string: msg)
        soundNuna.speak(utterance)
        //새로운 수를 넣어주자
        leftNum = Int.random(in: 2...50)
        rightNum = Int.random(in: 2...50)
        operatorSign = Operations.allCases.randomElement() ?? .divider
        expresultNum = makeExpResult(leftNum, rightNum, operatorSign.rawValue)
        
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
// 예1) 곱셈 말고 다른 사칙연산들도 문제에 반영해봅시다// 성공 짞짞짞
// 예2) 맞춤/틀림 숫자 리셋하기 (리셋해보기) 성공 짞짜깎
// 예3) 최대 10개의 문제를 제시하고 끝나면 리셋하기만 가능 // 해결
// 예4) 맞춤/틀림 말하기로 알려주기 (오호!, 땡, 꽥, 앗!...) // 해결 끗!
//
// UIKit과 SwiftUI 모두로 도전해봅시다
//
