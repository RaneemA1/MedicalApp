//
//  New_Password_Success.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 18/04/1445 AH.
//

import SwiftUI

struct New_Password_Success: View {
    @State var isCreateNewPassword = false
    
    var body: some View {
        ZStack{
            
           
            Create_New_Password_()
                .padding(.top,-150)
               
            Color.black
              .opacity(0.5)
              .ignoresSafeArea()
              Rectangle()
              .frame(width: 330 ,height: 400)
              .foregroundColor(.white)
              .cornerRadius(30)
            
              
    // MARK: - Success
              
              VStack(spacing: 20){
                  Image(systemName: "checkmark.circle.fill")
                      .resizable()
                      .foregroundStyle(.green1)
                      .frame(width: 100, height: 100)
                  
                  Text("Success")
                      .font(.title2)
                      .bold()
                  Text("You have successfully reset your password.")
                    .font(Font.custom("Inter", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.63, green: 0.66, blue: 0.69))
                    .frame(width: 263, alignment: .top)
                  
                  Button(action: {
                      isCreateNewPassword = true
                  },
                         label: {
                      
                      Text("Go to home")
                          .foregroundColor(.white).bold()
                          .frame(width: 260, height: 65)
                          .background(Color.green1)
                          .cornerRadius(80)
                  })
                  .fullScreenCover(isPresented: $isCreateNewPassword){
                      Home_View()
                  }
                  
              }
          }
    }
}
#Preview {
    New_Password_Success()
}
