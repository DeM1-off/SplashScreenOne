//
//  SplashScreenView.swift
//  SplashScreen
//
//  Created by Dmitro Dohryk on 19.05.2023.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        
        ZStack {
            if self.isActive {
                ContentView()
            } else {
                VStack{
                    Image("mascot")
                        .scaleEffect(size)
                    Text("LearnCodeOnline")
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                        .opacity(0.7)
                        .scaleEffect(size)
                        .opacity(opacity)
                }
                .onAppear{
                    withAnimation(.easeIn(duration: 1.0)){
                        self.size = 1.2
                        self.opacity = 1.0
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                            withAnimation {
                                self.isActive = true
                            }
                        }
                    }
                
             }
                
            }
            
                
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
