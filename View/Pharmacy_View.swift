//
//  Pharmacy_View.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 22/04/1445 AH.
//

import SwiftUI

struct Pharmacy_View: View {
    
    var PopularArray = [
        Popular_Product(imageName: "7", medicineName: "Panadol", medicinePCS: "20pcs", medicinePrice: "$15.99"),
    Popular_Product(imageName: "8", medicineName: "Panadol", medicinePCS: "20pcs", medicinePrice: "$15.99"),
        Popular_Product(imageName: "9",  medicineName: "Panadol", medicinePCS: "20pcs", medicinePrice: "$15.99")
]

var ProductOnSaleArry = [
    Sale(imageName: "7", medicineName: "Panadol", medicinePCS: "20pcs", medicinePrice: "$15.99", medicineSale: "$10.99"),
Sale(imageName: "8", medicineName: "Panadol", medicinePCS: "20pcs", medicinePrice: "$15.99", medicineSale: "$10.99"),
  Sale(imageName: "9", medicineName: "Panadol", medicinePCS: "20pcs", medicinePrice: "$15.99", medicineSale: "$10.99")

]

var body: some View {
    NavigationStack{
        VStack(spacing: 40){
            Search(titileSearch: "Search drugs, category...")
                
         Pharmacy()
            
            HStack{
                Text("Popular Product")
                  .font(
                    Font.custom("Inter", size: 16)
                      .weight(.semibold)
                  )
                Spacer()
                Text("See all")
                  .font(Font.custom("Inter", size: 12))
                  .foregroundColor(Color.green1)
                
            }.padding(.horizontal)
            
            HStack(spacing: 45){
                ForEach(PopularArray) { product in
                    product
                }
            }
            
            HStack{
                Text("Product on Sale")
                  .font(
                    Font.custom("Inter", size: 16)
                      .weight(.semibold)
                  )
                Spacer()
                
                Text("See all")
                  .font(Font.custom("Inter", size: 12))
                  .foregroundColor(Color.green1)
                
            } .padding(.horizontal)
            
            
            HStack(spacing: 20){
                ForEach(ProductOnSaleArry){ productSale in
                    productSale
                    
                }
            }
            
        }
        
        
        .navigationTitle("Pharmacy")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {}) {Image("Buy")})
    }
}
}

#Preview {
    Pharmacy_View()
}
