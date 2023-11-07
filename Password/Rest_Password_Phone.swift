//
//  Rest_Password_Phone.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 18/04/1445 AH.
//

import SwiftUI

struct Rest_Password_Phone: View {
    
    @State private var phone = ""
    @State var isResetPasswordPhone = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 19) {
            
            TextField("Phone", text: $phone)
                .keyboardType(.numberPad)
                .padding()
                .background(Color.gray2)
                .cornerRadius(30)
                .background(RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray3, lineWidth: 2)
                )
            
            
            
            //MARK: - Login Button
            
            Button(action: {
                // Handle login logic here
                isResetPasswordPhone = true
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
            .fullScreenCover(isPresented:$isResetPasswordPhone){
                Verify_Code_View()
            }
        }
        .padding(0)
        .frame(width: 327, alignment: .leading)
    }
    
}
#Preview {
    Rest_Password_Phone()
}
