//
//  PreparationView().swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 17/04/1445 AH.
//

import SwiftUI

struct PreparationView__: View {
    var body: some View {
        
        ZStack{
            
            TabView{
                
                _PreparationItems(image: "Image1", title: "Find a lot of specialist docters in one place")
                _PreparationItems(image: "Image2", title: "Get connect our Online Consultation")
                _PreparationItems(image: "Image3", title: "Consult only with doctor you trust")
            }
            
        }
        
    }}


#Preview {
    PreparationView__()
}
