//
//  IndicatorPointCustom.swift
//  OnlineBankingBusiness
//
//  Created by Anya Traille on 15/8/21.
//

import SwiftUI

struct IndicatorPointCustom: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Colors2.IndicatorKnob)
            Circle()
                .stroke(Color.white, style: StrokeStyle(lineWidth: 4))
        }
        .frame(width: 14, height: 14)
        .shadow(color: Colors2.LegendColor, radius: 6, x: 0, y: 6)
    }
}

struct IndicatorPointCustom_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorPointCustom()
    }
}
