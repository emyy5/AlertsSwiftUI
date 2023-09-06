//
//  ContentView.swift
//  AlertSwiftUI
//
//  Created by Eman Khaled on 06/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsPressed = false
    @State private var backgroundUpdate = false
    var body: some View {
        NavigationView{
            ZStack{
                if backgroundUpdate {
                    Color.red
                }
                else{
                    Color.blue
                }
                VStack {
                    Button(action:{
                        self.alertIsPressed = true
                        
                    } , label:{ Text("Tab me!")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    })
                    
                    .frame(width: 200, height: 50, alignment: .center)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
                    .alert(isPresented: $alertIsPressed, content: {
                        Alert(title: Text("would you like to Purchase?"), primaryButton: .default(Text("Got it"),
                                                                                                  action: {
                            //print("start purchase")
                            self.backgroundUpdate.toggle()
                            
                        }),
                              secondaryButton: .cancel(Text("No thanks")))
                    })
                }
            }
            .navigationTitle("SwiftUi Alerts")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
