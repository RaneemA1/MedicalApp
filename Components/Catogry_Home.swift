//
//  Catogry_Home.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 18/04/1445 AH.
//

import SwiftUI

struct Catogry_Home: View {
    var id = UUID()
    var imageName: String
    var title: String
    
    var body: some View {
        ZStack{
            VStack{
                Image(imageName)
                
                    .background( Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 64, height: 56)
                        .background(.white)
                        .cornerRadius(16)
                        .shadow(color: .black.opacity(0.1), radius: 35, x: 0, y: 17)
                    )
                    .padding(.bottom)
                
                // Body / Medium - Regular
                Text(title)
                    .font(Font.custom("SF Pro Display", size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.63, green: 0.66, blue: 0.69))
            }
        }
    }
}

#Preview {
    Catogry_Home(imageName: "Doctor", title: "Doctor")
}

