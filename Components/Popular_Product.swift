//
//  Popular_Product.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 22/04/1445 AH.
//

import SwiftUI

struct Popular_Product: View , Identifiable {
    
    var id = UUID()
    var imageName: String
    var medicineName: String
    var medicinePCS: String
    var medicinePrice: String
    
    var body: some View {
        VStack(spacing: 15){
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 68, height: 59)
            
            VStack(alignment: .leading,spacing: 4){
                Text(medicineName)
                  .font(
                    Font.custom("Inter", size: 12)
                      .weight(.semibold)
                  )
                Text(medicinePCS)
                  .font(
                    Font.custom("Inter", size: 9)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                HStack(spacing: 20){
                    Text(medicinePrice)
                      .font(
                        Font.custom("Inter", size: 14)
                          .weight(.semibold)
                      )
                    
                    Image("Component2")
                    
                }.padding(.top,8)
            }
            
        }
        .background(
            RoundedRectangle(cornerRadius: 11.13208)
              .inset(by: 0.5)
              .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 2)
              .frame(width: 118, height: 165))
          
    }
}

#Preview {
    Popular_Product(imageName: "7", medicineName: "Panadol", medicinePCS: "20pcs", medicinePrice: "$15.99")
}
