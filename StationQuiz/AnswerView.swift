//
//  AnswerView.swift
//  StationQuiz
//
//  Created by Taiyo Koshiba on 2022/06/05.
//

import SwiftUI

struct AnswerView: View {
    // ContenViewから受け取った値
    @Binding var text: String
    
    var body: some View {
        
        VStack{
            Text("駅名クイズ")
                .font(.title)
            
            Spacer()
            
            
            
            
            Button(action: {
            }){
                // ボタンの文字設定
                Text("答えを見る")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
            
            Spacer()
            
        }
    }
    
    struct AnswerView_Previews: PreviewProvider {
        static var previews: some View {
            AnswerView(text: <#Binding<String>#>)
        }
    }
}
