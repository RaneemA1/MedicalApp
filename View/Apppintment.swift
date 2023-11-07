//
//  Apppintment.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 22/04/1445 AH.
//

import SwiftUI

struct Apppintment: View {
    
    var ReasonArry = [
        Date_Reason(title1: "Date", title2: "Change", imageName: "Calendar", title3: "Wednesday, Jun 23, 2022 | 10:00 AM"),
        Date_Reason(title1: "Reason", title2: "Change", imageName: "Edit Square", title3: "Chest pain")
        
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                  Card(imageDoctor: "Dr. Marcus", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away")
                        .padding(.bottom,15)
                        .padding(.top,30)
                        .padding(.bottom,15)
                        .padding(.top,30)
                    
                    ForEach(ReasonArry) { reason in
                        reason
                    }
                    
                    Payment_Detail()
                    Payment_Method()
                    
                    
                    HStack(spacing: 80){
                       
                        VStack{
                            Text("Total")
                                .font(.callout)
                                .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                            
                            Text("$ 61.00")
                                .bold()
                        }
                        NavigationLink{
                            Payment_View()
                        } label: {
                            Text("Booking")
                                .bold()
                                .foregroundColor(.white)
                                .frame(width: 192, height: 50)
                                .background(Color(.green1))
                                .cornerRadius(32)
                        }
                        
                    }
                    .padding(.top,13)
                    
                    
                }
                
            }
            .navigationTitle("Apppointment")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Apppintment()
}


struct Payment_Detail: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("Payment Detail")
                .font(.title3).bold()
                .padding(.bottom,6)
            HStack{
                Text("Consultation")
                    .font(.callout)
                    .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                Spacer()
                Text("$60.00")
            }
            
            HStack{
                Text("Admin Fee")
                    .font(.callout)
                    .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                Spacer()
                Text("$01.00")
            }
            
            
            HStack{
                Text("Aditional Discount")
                    .font(.callout)
                    .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                Spacer()
                Text("-")
            }
            
            HStack{
                Text("Total")
                .bold()
                Spacer()
                Text("$61.00")
                    .foregroundStyle(.green1)
                    .bold()
            }
            
        } .frame(width: 360)
        
        Divider()
        
            .frame(width: 358)
            .background(Color.green1.opacity(0.5))
            .padding(.top,4)
            .padding(.bottom,8)
    }
    
    
}


struct Payment_Method: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 19){
            Text("Payment Method")
                .font(.title3).bold()
                .padding(.bottom,6)
                .padding(.leading,-30)
            
            HStack(spacing: 185){
                Text("VISA")
                    .font(.title2)
                    .italic().bold()
                  .foregroundColor(Color(red: 0.1, green: 0.12, blue: 0.44))
                
                Text("Change")
                  .font(.callout)
                  .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                
            }.background(
                RoundedRectangle(cornerRadius: 11)
                  .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 2)
                  .frame(width: 334, height: 49)
                  .background(.white))
            
        }
    }
    
}
