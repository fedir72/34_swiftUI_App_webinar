//
//   VideoView.swift
//  34_swiftUI_App_Example
//
//  Created by fedir on 21.03.2020.
//  Copyright © 2020 fedir. All rights reserved.
//

import SwiftUI

struct _VideoView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var videoTitle: String
    @State var videoDescription: String
    
    
    var body: some View {
         NavigationView{
            VStack {
            TextField("VideoTitle", text: $videoTitle)
             TextField("Video description", text: $videoDescription)
                Divider()
                Button(action: {
                    print("1234")
                    self.presentationMode.wrappedValue.dismiss()//сворачивание экрана
                }, label: {
                    Text("Dismiss this vc")
                })
                Spacer()
            }.padding()
            .navigationBarTitle("SwiftBook.ru ")
        }
        
        
    }
}

//struct _VideoView_Previews: PreviewProvider {
//    static var previews: some View {
//        _VideoView(videoTitle: "vvv", videoDescription: "vvv")
//    }
//}
