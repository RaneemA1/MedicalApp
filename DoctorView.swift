//
//  DoctorView.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 18/04/1445 AH.
//

import SwiftUI
struct DoctorsView: View {
    @State var decInfo: [ToDoct] = [
        ToDoct(drName: "Dr.Marcus Horizon", major: "Cardiologist", evalu: "4.7", space: "800m away", drImage: "Dr. Marcus" ),
        ToDoct(drName: "Dr.Maria Elena", major: "Psychologist", evalu: "4.9", space: "1.5km away", drImage: "Dr.Maria" ),
        ToDoct(drName: "Dr.Stefi Jessi", major: "Orthopedist", evalu: "4.8", space: "2km away", drImage: "Dr.Stefi" ),
        ToDoct(drName: "Dr.Gerty Cori", major: "Orthopedist", evalu: "4.7", space: "800m away", drImage: "Dr.Gerty" ),
        ToDoct(drName: "Dr.Diandr", major: "Orthopedist", evalu: "4.7", space: "800m away", drImage: "Dr.Diandra" ),
    ]
    var body: some View {
        ScrollView{
            VStack {
                ForEach(decInfo) { doc in
                    ToDoct(drName: doc.drName, major: doc.major, evalu: doc.evalu, space: doc.space, drImage: doc.drImage )
                }
            }
        }
    }
}
   

#Preview {
    DoctorsView()
}
struct ToDoct: View, Identifiable {
    var id = UUID()
    var drName: String
    var major: String
    var evalu: String
    var space: String
    var drImage: String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.green1, lineWidth: 2)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 200)
                
                HStack {
                    Image(drImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                        .foregroundColor(.green1)
                
                    VStack{
                        Text(drName)
                            .bold()
                            .font(.title3)
                        
                        Text(major)
                            .foregroundColor(.gray)
                        
                        HStack {
                            ZStack {
                                Rectangle()
                                    .fill(Color.green1)
                                    .frame(width: 60, height: 30)
                                
                                HStack {
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.green1)
                                    
                                    Text(evalu)
                                }
                            }
                            .padding(.leading)
                            
                            Image(systemName: "mappin")
                                .foregroundColor(.gray)
                            
                            Text(space)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
        }}
}


