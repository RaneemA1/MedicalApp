//
//  Home_Box.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 18/04/1445 AH.
//

import SwiftUI

struct Home_Box: View {
    var body: some View {
        ZStack{
            HStack(spacing: 30){
            Text("Early protection for\nyour family health")
                .font(
                    Font.custom("Inter", size: 18)
                        .weight(.semibold)
                )
                .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
            Image("7xm")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 91, height: 131)
            
                .background(
                    Circle()
                        .stroke(.white, lineWidth: 30)
                    
                        .clipShape(RoundedRectangle(cornerRadius: 60))
                        .frame(width: 110)
                    
                )
        }
                  .background(
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 335, height: 135)
              .background(Color(red: 0.91, green: 0.95, blue: 0.95))
              .cornerRadius(10)
                  )
        }
    }
}

#Preview {
    Home_Box()
}
