//
//  BarChartCellCustom.swift
//  OnlineBankingBusiness
//
//  Created by Anya Traille on 14/8/21.
//

import SwiftUI

public struct BarChartCellCustom : View {
    var value: Double
    var index: Int = 0
    var width: Float
    var numberOfDataPoints: Int
    var cellWidth: Double {
        return Double(width)/(Double(numberOfDataPoints) * 1.5)
    }
    var accentColor: Color
    //var gradient: GradientColor?
    
    @State var scaleValue: Double = 0
    @Binding var touchLocation: CGFloat
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(accentColor)
            }
            .frame(width: CGFloat(self.cellWidth))
            .scaleEffect(CGSize(width: 1, height: self.scaleValue), anchor: .bottom)
            .onAppear(){
                self.scaleValue = self.value
            }
        .animation(Animation.spring().delay(self.touchLocation < 0 ?  Double(self.index) * 0.04 : 0))
    }
}

#if DEBUG
struct ChartCell_Previews : PreviewProvider {
    static var previews: some View {
        BarChartCellCustom(value: Double(0.75), width: 320, numberOfDataPoints: 12, accentColor: Color.blue, touchLocation: .constant(-1))
    }
}
#endif
