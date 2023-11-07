//
//  Time_Baker.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 22/04/1445 AH.
//

import SwiftUI

struct Time_Baker: View , Identifiable {
    var id = UUID()
    var time: String
    var isClicked: Bool
    var isAvailable: Bool

    var body: some View {
        
        ZStack{
            Text(time)
                .font(.custom("Inter", size: 14))
            // .padding(10)
                .foregroundColor(isClicked ? .white : (isAvailable ? .black : Color.green1.opacity(0.2)))
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(isClicked ? Color.green1 : Color.green1.opacity(0.3), lineWidth: 1.5)
                        .frame(width: 120, height: 40)
                        .background(isClicked ? Color.green1 : Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                )
        }
    }
}

struct Time_Baker_Previews: PreviewProvider {
    static var previews: some View {
        Time_Baker(time: "02:00 PM", isClicked: false, isAvailable: true)
    }
}
