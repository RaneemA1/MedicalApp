//
//  LogIn_View.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 17/04/1445 AH.
//

import SwiftUI

struct LogIn_View: View {
    @State var isLogInSuccess = false
    
    
    var body: some View {
        NavigationStack{
            
                ZStack{
                    
                  LogInView()
             
                  Color.black
                    .opacity(0.5)
                    .ignoresSafeArea()
                    Rectangle()
                    .frame(width: 350 ,height: 400)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    
          // MARK: - Success
                    
                    VStack(spacing: 20){
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .foregroundStyle(.green1)
                            .frame(width: 100, height: 100)
                        
                        Text("Yeay! Welcome Back")
                            .font(.title2)
                            .bold()
                        Text("Once again you login successfully into medidoc app")
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .foregroundColor(.gray)
                        
                        Button(action: {
                            isLogInSuccess = true
                        },
                               label: {
                            
                            Text("Go to home")
                                .foregroundColor(.white).bold()
                                .frame(width: 260, height: 65)
                                .background(Color.green1)
                                .cornerRadius(80)
                        })
                        .fullScreenCover(isPresented: $isLogInSuccess){
                            Home_View()
                        }
                        
                    }
                }
            
          
          
        }
    }
}
#Preview {
    LogIn_View()
}
