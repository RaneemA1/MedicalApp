//
//  Recent_Doctor.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 22/04/1445 AH.
//

import SwiftUI

struct Recent_Doctor: View , Identifiable {
    
    var id = UUID()
    var imageDoctor: String
    var nameDoctor: String
    
    var body: some View {
     
        VStack(spacing: 13){
                Image(imageDoctor)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 72, height: 73)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
                Text(nameDoctor)
                    .font(
                        Font.custom("Inter", size: 13)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.23, green: 0.27, blue: 0.33))
            }
        
    }
}

#Preview {
    Recent_Doctor(imageDoctor: "Dr. Marcus", nameDoctor: "Dr. Marcus")
}
