//
//  LogInSignUpView.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 17/04/1445 AH.
//

import SwiftUI

struct LogInSignUpView: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                VStack{
                    Image(systemName: "cross")
                        .resizable()
                        .frame(width:100, height: 100)
                        .foregroundColor(.green1)
                    Text("Swift  معسكر")
                        .font(.title)
                        .bold()
                        .foregroundColor(.green1)
                }
                .padding(.bottom)
                
                VStack(){
                    
                    Text("Let's get started!")
                        .font(.title).bold()
                        .padding(.bottom, 5)
                    Text("Login to enjoy the featuers we've provided, and stay healthy!")
                        .multilineTextAlignment(.center)
                        .font(.title3)
                        .foregroundColor(.gray)
                    
                }
                .padding(.bottom,50)
                
                
                NavigationLink {
                    LogInView()
                } label: {
                    
                    Text("Login")
                        .foregroundColor(.white).bold()
                        .frame(width: 260, height: 55)
                        .background(Color.green1)
                        .cornerRadius(80)
                    
                }
                
                NavigationLink {
                   SignUpView()
                } label: {
                    
                    Text("Sign Up")
                        .foregroundColor(.green1).bold()
                        .frame(width: 260, height: 55)
                        .cornerRadius(30)
                        .background(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.green1, lineWidth: 2)
                        )
                    
                    
                }
                
                //            .overlay(
                //                RoundedRectangle(cornerRadius: 80)
                //                    .stroke(Color.mygreen, lineWidth: 1.6)
                //            )
                
            }.padding()
            
            
        }
    }
        
}



#Preview {
    LogInSignUpView()
}
