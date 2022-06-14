//
//  ContentView.swift
//  StationQuiz
//
//  Created by Taiyo Koshiba on 2022/06/04.
//


import SwiftUI

struct ContentView: View {
    // 駅名データ
    let stationList = ["千葉", "東千葉", "都賀", "四街道", "物井", "佐倉", "南酒々井", "榎戸", "八街", "日向", "成東"]

    // 出題用の乱数
    @State var randomNum = Int.random(in: 1...9)

    // ビューの切り替え
    @State var onSwitch = false

    // AnswerViewに受け渡す値
    @State var text = ""


    var body: some View {

        if onSwitch {
            AnswerView(text : $text)

        } else {

            VStack{
                Text("駅名クイズ")
                    .font(.largeTitle)
                    .padding()
                Text("JR総武本線")
                    .font(.title)
                    .padding()
                    .foregroundColor(.yellow)
                Text("○○はどこの駅でしょう？")
                    .font(.title)


                Spacer()


                HStack {
                    Text(stationList[randomNum - 1])
                        .font(.title)
                        .padding()
                    Text("○○")
                        .padding()
                        .font(.title)
                    Text(stationList[randomNum + 1])
                        .padding()
                        .font(.title)
                }


                Spacer()


                Button(action: {
                    text = stationList[randomNum]
                    self.onSwitch.toggle()
                }){
                    // ボタンの文字設定
                    Text("答えを見る")
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .font(.title)
                        .background(Color.pink)
                        .foregroundColor(Color.white)
                }


            }




        }
    }
}

struct AnswerView : View {
    // ContenViewから受け取った値
    @Binding var text: String


    // ビューの切り替え
    @State var onSwitch = false


    var body: some View {
        if onSwitch {
            ContentView()

        } else {

            VStack{
                Text("駅名クイズ")
                    .font(.largeTitle)
                    .padding()


                Spacer()

                Text("答えは")
                    .font(.title)
                    .padding()
                Text(text)
                    .font(.title)
                    .border(Color.red, width: 1.0)

                Spacer()


                Button(action: {
                    self.onSwitch.toggle()
                }){
                    // ボタンの文字設定
                    Text("次の問題")
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .font(.title)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
