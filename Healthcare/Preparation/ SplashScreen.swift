//
//   SplashScreen.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 17/04/1445 AH.
//

import SwiftUI

struct _SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        ZStack{
            
            if isActive{
               PreparationView__()
            }else {
                Color.green1
                    .ignoresSafeArea()
               //     .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    VStack{
                        
                        Image(systemName: "cross")
                            .resizable()
                            .frame(width:140, height: 140)
                            .foregroundColor(.white)
                        Text("Swift  معسكر")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white.opacity(0.90))
                        
                        
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.8
                            self.opacity = 1.0
                        }
                    }
                }
                
                .ignoresSafeArea()
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
                
            }
            
            
        }
        
        
    }
}




#Preview {
    _SplashScreen()
}
