//
//  ContentView.swift
//  Image_tutorial
//
//  Created by Jeff Jeong on 2020/07/03.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -1100)
                    
                CircleImageView()
                HStack{
                    NavigationLink(destination: MyWebview(url: "https://www.youtube.com/channel/UCutO2H_AVmWHbzvE92rpxjA/")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("구독하러 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebview(url: "https://open.kakao.com/o/gxOOKJec")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("오픈깨톡방 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                } // Hstack
                .padding(50)
                
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
