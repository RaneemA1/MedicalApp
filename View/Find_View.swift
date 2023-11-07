//
//  Find_View.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 22/04/1445 AH.
//

import SwiftUI


struct Category1:Identifiable{
    var id = UUID()
    var imageName: String
    var title: String
    
}

struct Find_View: View {
    var catogryRow = [
        Category1(imageName: "Doctor", title: "Doctor"),
        Category1(imageName: "Lungs", title: "Lungs Specialist"),
        Category1(imageName: "Dentist", title: "Dentist"),
        Category1(imageName: "Psychiatrist", title: "Psychiatrist"),
        Category1(imageName: "Covid", title: "Covid-19"),
        Category1(imageName: "Syringe", title: "Surgeon"),
        Category1(imageName: "Cardiologist", title: "Cardiologist")
    ]
    
    
    var recentDoctos = [
        Recent_Doctor(imageDoctor: "Dr. Marcus", nameDoctor: "Dr. Marcus"),
        Recent_Doctor(imageDoctor: "Dr.Diandra", nameDoctor: "Dr. Marcus"),
      Recent_Doctor(imageDoctor: "Dr.Maria", nameDoctor: "Dr. Marcus"),
        Recent_Doctor(imageDoctor: "Dr.Stefi", nameDoctor: "Dr. Marcus")
    ]
    
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 4) // 4 columns
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    
                    Search(titileSearch: "Find a doctor")
                        .padding(.top,30)
                    
                    Text("Category")
                        .font(
                            Font.custom("Inter", size: 18)
                                .weight(.semibold)
                        )
                        .padding(.trailing,260)
                        .padding(.top,35)
                    
                    
                    LazyVGrid(columns: columns, spacing: 25) {
                        ForEach(catogryRow) { row in
//                            row
//                                .frame(maxWidth: .infinity, alignment: .center) // Center-align each item
                            Text(row.title)
                            
                        }
                    }.padding(.horizontal)
                        .padding(.top,25)
                    
                    
                    
                    Text("Recommended Doctors")
                        .font(
                            Font.custom("Inter", size: 18)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                        .padding(.trailing,144)
                        .padding(.top,15)
                    
                    
                    Recommended(imageDoctor: "doctor1", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away")
                        .padding(.top,10)
                    
                    
                    Text("Your Recent Doctors")
                      .font(
                        Font.custom("Inter", size: 18)
                          .weight(.semibold)
                      )
                      .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                      .padding(.trailing,144)
                      .padding(.top,30)
                    
                    
                    HStack(spacing: 15){
                        ForEach(recentDoctos) { docto in
                            docto
                        }
                    }
                    .padding(.top,10)
                    
                    
                }.padding(0)
                
                    .navigationTitle("Find Doctors")
                    .navigationBarTitleDisplayMode(.inline) // Center the title
            }
            
        }
    }
}

#Preview {
    Find_View()
}
