//
//  MultiLineChartViewCustom.swift
//  OnlineBankingBusiness
//
//  Created by Anya Traille on 15/8/21.
//

import SwiftUI


public struct MultiLineChartViewCustom: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var data:[MultiLineChartData]
    public var title: String
    public var legend: String?
    public var style: ChartStyle
    public var darkModeStyle: ChartStyle
    public var formSize: CGSize
    public var dropShadow: Bool
    public var valueSpecifier:String
    
//    let screenWidth = UIScreen.main.bounds.size.width
//    var columnWidth: CGFloat = 100.0
    
    @State private var touchLocation:CGPoint = .zero
    @State private var showIndicatorDot: Bool = false
    @State private var currentValue: Double = 2 {
        didSet{
            if (oldValue != self.currentValue && showIndicatorDot) {
                HapticFeedback.playSelection()
            }
            
        }
    }
    
    var globalMin:Double {
        if let min = data.flatMap({$0.onlyPoints()}).min() {
            return min
        }
        return 0
    }
    
    var globalMax:Double {
        if let max = data.flatMap({$0.onlyPoints()}).max() {
            return max
        }
        return 0
    }
    
    var frame = CGSize(width: 180, height: 120)
    private var rateValue: Int?
    
    public init(data: [([Double], GradientColor)],
                title: String,
                legend: String? = nil,
                style: ChartStyle = Styles.lineChartStyleOne,
                form: CGSize = ChartForm.medium,
                rateValue: Int? = nil,
                dropShadow: Bool = true,
                valueSpecifier: String = "%.1f") {
        
        self.data = data.map({ MultiLineChartData(points: $0.0, gradient: $0.1)})
        self.title = title
        self.legend = legend
        self.style = style
        self.darkModeStyle = style.darkModeStyle != nil ? style.darkModeStyle! : Styles.lineViewDarkMode
        self.formSize = form
        frame = CGSize(width: self.formSize.width, height: self.formSize.height/2)
        self.rateValue = rateValue
        self.dropShadow = dropShadow
        self.valueSpecifier = valueSpecifier
    }
    
    public var body: some View {
        ZStack(alignment: .center){
             
//            RoundedRectangle(cornerRadius: 20)
//                .fill(self.colorScheme == .dark ? self.darkModeStyle.backgroundColor : self.style.backgroundColor)
////                .frame(width: frame.width, height: 240, alignment: .center)
//                .frame(width: frame.width, height: 150, alignment: .center)
//                .shadow(radius: self.dropShadow ? 8 : 0)
            ZStack(alignment: .leading){
//                if(!self.showIndicatorDot){
//                    VStack(alignment: .leading, spacing: 8){

                VStack(alignment: .leading, spacing: 8) {
                    
                    Text(self.title)
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color.secondary)
                        .padding(.leading, 16)
                    
                    Spacer()
                }
                GeometryReader{ geometry in
                    ZStack{
                        ForEach(0..<self.data.count) { i in
                            LineCustom(data: self.data[i],
                                 frame: .constant(geometry.frame(in: .local)),
                                 touchLocation: self.$touchLocation,
                                 showIndicator: self.$showIndicatorDot,
                                 minDataValue: .constant(self.globalMin),
                                 maxDataValue: .constant(self.globalMax),
                                 showBackground: false,
                                 gradient: self.data[i].getGradient(),
                                 index: i)
                        }
                    }
                }
                //.frame(width: frame.width, height: frame.height + 30)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .offset(x: 0, y: 0)
            }
            .frame(width: self.formSize.width, height: self.formSize.height) // comment to make narrower
            //.frame(width: self.formSize.width, height: 150) // uncomment to make narrower
        }
        
        .gesture(DragGesture()
        .onChanged({ value in
//            self.touchLocation = value.location
//            self.showIndicatorDot = true
//            self.getClosestDataPoint(toPoint: value.location, width:self.frame.width, height: self.frame.height)
        })
            .onEnded({ value in
                self.showIndicatorDot = false
            })
        )
    }
    
}

struct MultiWidgetViewCustom_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            MultiLineChartViewCustom(data: [([8,23,54,32,12,37,7,23,43], GradientColors.orange)], title: "Line chart", legend: "Basic")
//                .environment(\.colorScheme, .light)
            
            
            
            
            MultiLineChartViewCustom(data:
                                        [([8,23,54,32,12,37,7,23,43], GradientColors.orange)],
                               title: "Balance", form: CGSize(width: CGFloat(UIScreen.main.bounds.size.width-16), height: CGFloat(220)), dropShadow: false)
                .frame(maxWidth: 640)
            
            
        }
    }
}
