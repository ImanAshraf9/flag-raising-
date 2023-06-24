//
//  ContentView.swift
//  Counter
//
//  Created by Iman Ashraf on 03/04/1402 AP.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("count") var counter = 0.0
    @State private var message = ""
    
    var body: some View {
        
        VStack {
          
            Text(" \(Int(counter))")
            
            HStack(alignment: .bottom, spacing: -10){
                
                Rectangle()
                    .frame(width: 20)
                Text("🇦🇪")
                    .font(.system(size:90))
                    .offset(y: -10*counter)
                
            }
            
            Button{
                withAnimation {
                    counter = 0
                    if counter >= 20 {
                        message = "عيشي بلادي "
                    }
                    if counter >= 30 {
                        message = "عاش اتحادنا"
                    }
                    if counter >= 40 {
                        message = "عاليا"
                    }
                }
            } label: {
                Text("Raise Flag")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .shadow(color: .white.opacity(0.3), radius: 10, x: 0.0, y: 0.0)
            
            
            Button{
                withAnimation {
                    counter = 0
                    message = ""
                }
            } label: {
                Text("Reset")
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .shadow(color: .white.opacity(0.3), radius: 10, x: 0.0, y: 0.0)
            
            
            Text(message)
                .padding()
                .foregroundColor(.red)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
