//
//  Data_Baker.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 22/04/1445 AH.
//

import SwiftUI

struct Data_Baker: View , Identifiable {
    
    var id = UUID()
    var month: String
    var day: String
    var backgroundColor: Color = Color(.white)
    var isClicked: Bool = false
    
    var body: some View {
    
            
            VStack{
               
                Text(month)
                    .foregroundStyle(isClicked ? .white : .gray)
                    .font(Font.custom("Inter", size: 14))
                Text(day)
                    .foregroundStyle(isClicked ? .white : .black)
                    .font(
                    Font.custom("Inter", size: 18)
                    .weight(.semibold)
                    )
            }.padding(0)
            .background(
                RoundedRectangle(cornerRadius: 15)
                  .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 1)
                  .background(Color(isClicked ? .green1 : backgroundColor))
                  .frame(width: 46, height: 64)
                  .clipShape(RoundedRectangle(cornerRadius: 15))
                  
              )
            

    
        
        
        
    }
}

#Preview {
    Data_Baker(month: "Nov", day: "8")
}
