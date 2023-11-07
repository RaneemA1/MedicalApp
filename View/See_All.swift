//
//  See_All.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 22/04/1445 AH.
//

import SwiftUI

struct See_All: View {
    var See_All_Top = [
        Card(imageDoctor: "doctor1", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Card(imageDoctor: "doctor2", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Card(imageDoctor: "doctor3", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Card(imageDoctor: "doctor4", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Card(imageDoctor: "doctor5", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away")
    ]
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                
                VStack(spacing: 25){
                    ForEach(See_All_Top) { row in
                        row
                    }.padding(.horizontal,60)
                }
                .padding(.top,20)
            }
            
            .navigationTitle("Top Doctor")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing: Button(action: {}) {Image("dots")})
        }
    }
}
#Preview {
    See_All()
}
