//
//  ContentView.swift
//  34_swiftUI_App_Example
//
//  Created by fedir on 20.03.2020.
//  Copyright © 2020 fedir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   @State private var shovingVideView = false
    
   @ObserveObject var videoData = VideModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading)  {
                GeometryReader {geometry in
                    HStack(spacing: 20) {
                        NavigationLink(destination: ChannelView(), label: {
                            Text("Edit channel")
                        }).frame(width: geometry.size.width/2 - 10, height: 50).accentColor(Color.init(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))).background(Color.init(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))).cornerRadius(10)
                        Button(action: {
                            print("123")
                            self.shovingVideView.toggle()
                        }, label: {
                            Text("Edit Content")
                        }).sheet(isPresented: self.$shovingVideView , content: {
                            //_VideoView(videoTitle: "vvv", videoDescription: "vvv ")
                            _VideoView(videoTitle: self.$videoData.title ,videoDescription: self.$videoData.videoDescription )
                        } ).frame(width: geometry.size.width/2 - 10, height: 50).accentColor(Color.init(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))).background(Color.init(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))).cornerRadius(10)                    }
                    }.padding().frame(height: 50)
                Divider()//разделение экрана
                HStack {
                    Image("Файл9").resizable().frame(width: 160, height: 160)//фото и настройки для него
                    VStack(alignment: .leading ) {
                        Text("Title: \(videoData.title)").font(.title)//увеличиваем буквы
                        Text( "Banana: \(videoData.videoDescription)").font(.subheadline).foregroundColor(.black)
                    }
                }
                
                Spacer()//прижимаем все элементы вверх вью
                }.padding()//отступ от краев
           .navigationBarTitle("SwiftBook.ru")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
