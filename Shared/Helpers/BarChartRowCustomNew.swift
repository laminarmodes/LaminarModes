//
//  BarChartRowCustomNew.swift
//  OnlineBankingBusiness
//
//  Created by Anya Traille on 15/8/21.
//

import SwiftUI

public struct BarChartRowCustomNew : View {
    
    
    @EnvironmentObject private var reference: Reference
    
    var data: [Double]
    var accentColor: Color
    //var gradient: GradientColor?
    var allColors: [Color] // If there are not enough colors this will crash
    
    var maxValue: Double {
        guard let max = data.max() else {
            return 1
        }
        return max != 0 ? max : 1
    }
    @Binding var touchLocation: CGFloat
    public var body: some View {
        GeometryReader { geometry in
            HStack(alignment: .bottom, spacing: (geometry.frame(in: .local).width-22)/CGFloat(self.data.count * 3)){
                ForEach(0..<self.data.count, id: \.self) { i in
                    BarChartCellCustom(value: self.normalizedValue(index: i),
                                 index: i,
                                 width: Float(geometry.frame(in: .local).width - 22),
                                 numberOfDataPoints: self.data.count,
                                 accentColor: self.reference.books[i].color ?? Color.gray,
//                                 accentColor: self.allColors[i],
                                 touchLocation: self.$touchLocation)
                        .scaleEffect(self.touchLocation > CGFloat(i)/CGFloat(self.data.count) && self.touchLocation < CGFloat(i+1)/CGFloat(self.data.count) ? CGSize(width: 1.4, height: 1.1) : CGSize(width: 1, height: 1), anchor: .bottom)
                        .animation(.spring())
                    
                }
            }
            .padding([.top, .leading, .trailing], 10)
        }
    }
    
    func normalizedValue(index: Int) -> Double {
        return Double(self.data[index])/Double(self.maxValue)
    }
}

#if DEBUG
struct ChartRowNew_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            BarChartRowCustomNew(data: [0], accentColor: Color.blue, allColors: [Color.red, Color.orange, Color.green, Color.blue, Color.purple, Color.yellow, Color.gray], touchLocation: .constant(-1)).environmentObject(Reference())
            BarChartRowCustomNew(data: [8,23,54,32,12,37,7], accentColor: Color.blue, allColors: [Color.red, Color.orange, Color.green, Color.blue, Color.purple, Color.yellow, Color.gray], touchLocation: .constant(-1)).environmentObject(Reference())
        }
    }
}
#endif
