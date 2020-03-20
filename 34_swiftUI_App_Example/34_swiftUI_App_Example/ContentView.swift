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
                    HStack {
                        Button(action: {
                            print("123")
                        }, label: {
                            Text("Button")
                        })
                    }
                }
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
