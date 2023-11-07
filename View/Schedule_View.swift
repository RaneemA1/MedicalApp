//
//  Schedule_View.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 22/04/1445 AH.
//

import SwiftUI

struct Schedule_View: View {
    var body: some View {
        
        var CardScheduleArry = [
            Card_Schedule(nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", imageDoctor: "Dr. Marcus" ,date: "26/06/2022",  time: "2:00 PM", confirm: "Confirmed"),
            Card_Schedule(nameDoctor: "Dr. Alysa Hana", specialty: "Chardiologist", imageDoctor: "Dr. Alysa" ,date: "26/06/2022",  time: "2:00 PM", confirm: "Confirmed"),
            Card_Schedule(nameDoctor: "Dr. Alysa Hana", specialty: "Chardiologist", imageDoctor: "Dr. Alysa" ,date: "26/06/2022",  time: "2:00 PM", confirm: "Confirmed")
        ]
  
        NavigationStack{
            VStack{
                    segments()
                        .padding(.bottom,20)
                    
                    ScrollView{
                        VStack(spacing: 30){
                            
                            ForEach(CardScheduleArry) { schedule in
                                schedule
                            }.padding(.top)
                            
                        }.frame(width: 400)
                    }
                    
               
            }
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Text("Schedule")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "bell")
                    }
                }
            }
        }
    }
}

#Preview {
    Schedule_View()
}

struct segments: View {
    
    
    @State private var selectedSegment = 0
    let segments = ["Upcoming", "Completed", "Canceled"]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .green1;        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    var body: some View {
        VStack{
            
            
            Picker("Segments", selection: $selectedSegment) {
                ForEach(0..<segments.count, id: \.self) { index in
                    Text(segments[index]).tag(index)
                        .tag(index)
                    
                }
            }
            .background(Color.green1.opacity(0.2))
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            
            if selectedSegment == 0{
                // Schedule_View()
            } else {
                // Reset_Password_Phone()
            }
            
            
            
            
        }
    }
}
