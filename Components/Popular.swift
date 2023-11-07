//
//  Popular.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 22/04/1445 AH.
//

import SwiftUI

struct Popular: View , Identifiable {
    
    var id = UUID()
    var titile:String
    
    var body: some View {
        HStack{
            Text(titile)
              .foregroundColor(.white)
        }

        .padding()
        .background(
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 118, height: 50)
          .background(Color(red: 0.1, green: 0.6, blue: 0.56))
          .cornerRadius(10))
    }
}

#Preview {
    Popular(titile: "Covid-19")
}

