//
//  SignUpView.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 17/04/1445 AH.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var email = ""
    @State private var password = ""
   // @State private var isChecked = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                
                VStack(spacing:20){
                    
                    VStack(spacing:20){
                        //MARK: - Text Field
                        Text("sing up")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.bottom, 20)
                        
                        
                        ZStack{
                            Image(systemName: "person")
                                .resizable()
                                .frame(width:30, height: 30)
                                .padding(.trailing , 290)
                            Text("James Schleifer")
                                .padding(.trailing , 100)
                                .foregroundColor(.black)
                                .bold()
                                .padding()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.gray2, lineWidth: 2)
                                            
                                )
                        }
                        
                        ZStack{
                            Image(systemName: "envelope")
                                .resizable()
                                .frame(width:35, height: 30)
                                .padding(.trailing , 290)
                            Text("Jamesschleifer@gmail.com")
                                .padding(.trailing , 10)
                                .foregroundColor(.black)
                                .bold()
                                .padding()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.gray2, lineWidth: 2)
                                            
                                )
                        }
                        
                        SecureField("Enter your Password", text: $password)
                        // .textFieldStyle()
                            .padding()
                            .background(Color.gray1
                            )
                            .cornerRadius(30)
                            .background(RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray3, lineWidth: 2)
                            )
                        
                        
                        VStack{
                            HStack{
                                Image(systemName: "rectangle")
                                Text("I agree to the medidoc")
                                Button(action: {
                                    // Handle login logic here
                                }) {
                                    Text("Terms of Service")
                                        .foregroundColor(.green1)
                                }
                            }
                            HStack{
                                Text("and")
                                
                                Button(action: {
                                    // Handle login logic here
                                }) {
                                    Text("Privacy Policy")
                                        .foregroundColor(.green1)
                                }
                            }
                          
                            
                        }
                        
                        
                        Button(action: {
                            // Handle login logic here
                            print("Email: \(email)")
                            print("Password: \(password)")
                        }) {
                            Text("Sign Up")
                                .font(.title2).bold()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding(.all ,10)
                                .background(Color.green1)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                        }
                        
                        
                        
                        HStack{
                            Text("Don't have an account ?")
                                .foregroundStyle(.gray)
                            Button(action: {
                                // Handle login logic here
                            }) {
                                Text("Sign Up")
                                    .foregroundColor(.green1)
                            }
                            
                        }
                        
                        
                    }
                }
                .padding()
            }
        }
    }
}



#Preview {
    SignUpView()
}
