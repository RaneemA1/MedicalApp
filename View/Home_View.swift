//
//  Home_View.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 18/04/1445 AH.
//

import SwiftUI

struct Home_View: View {
    
    var catogryRow = [
        Catogry_Home(imageName: "Doctor", title: "Doctor"),
        Catogry_Home(imageName: "Pharmacy", title: "Pharmacy"),
        Catogry_Home(imageName: "Hospital", title: "Hospital"),
        Catogry_Home(imageName: "Ambulance", title: "Ambulance")]
    
    var body: some View {
        
        ZStack {
            ScrollView{
                Header_Home()
                    .padding(.top,60)
                Search(titileSearch: "Search doctor, drugs, articles...")
                    .padding(.top,20)
                
                HStack(spacing: 32){
                    ForEach(catogryRow , id:\.id) { row in
                        Image(row.imageName)
                    }
                }
                .padding(.top,35)
                
                
                Home_Box()
                .padding(.top,35)
            }
            .frame(width: 375, height: 812)
            .background(.white)
        }
    }
}


#Preview {
    Home_View()
}
