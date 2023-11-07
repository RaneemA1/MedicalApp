//
//  Rest_Pssword_Email.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 18/04/1445 AH.
//

import SwiftUI

struct Rest_Pssword_Email: View {
    @State private var email = ""
    
    @State var isResetPasswordEmail = false
    
    var body: some View {
        NavigationStack{
            
            VStack(alignment: .leading, spacing: 19) {
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.gray2)
                    .cornerRadius(30)
                    .background(RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray3, lineWidth: 2)
                    )
                
                
                
                //MARK: - Reset Password Button
                
                Button(action: {
                    // Handle login logic here
                    isResetPasswordEmail = true
                }) {
                    Text("Reset Password")
                        .font(.title2).bold()
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .padding(.horizontal)
                .background(Color.green1)
                .foregroundColor(.white)
                .cornerRadius(30)
                .fullScreenCover(isPresented: $isResetPasswordEmail){
                    Verify_Code_View()
                }
            }
            .padding(0)
            .frame(width: 327, alignment: .leading)
        }
        
    }
}

#Preview {
    Rest_Pssword_Email()
}
