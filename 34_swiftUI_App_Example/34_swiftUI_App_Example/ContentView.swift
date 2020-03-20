//
//  ContentView.swift
//  34_swiftUI_App_Example
//
//  Created by fedir on 20.03.2020.
//  Copyright © 2020 fedir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack{
                GeometryReader {geometry in
                    HStack(spacing: 20) {
                        NavigationLink(destination: ChannelView(), label: {
                            Text("Edit channel")
                        }).frame(width: geometry.size.width/2 - 10, height: 50).accentColor(Color.init(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))).background(Color.init(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))).cornerRadius(10)
                        Button(action: {
                            print("123")
                        }, label: {
                            Text("Edit Content")
                        }).frame(width: geometry.size.width/2 - 10, height: 50).accentColor(Color.init(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))).background(Color.init(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))).cornerRadius(10)                    }
                    }.padding().frame(height: 50)
                Text("Hello World")
                Text( "Banana")
            .navigationBarTitle("SwiftBook.ru")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
