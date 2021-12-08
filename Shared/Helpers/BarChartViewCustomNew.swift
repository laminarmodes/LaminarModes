//
//  BarChartViewCustomNew.swift
//  OnlineBankingBusiness
//
//  Created by Anya Traille on 15/8/21.
//

import SwiftUI

public struct BarChartViewCustomNew : View {
    
    @EnvironmentObject private var reference: Reference
    @Environment(\.colorScheme) var colorScheme
    public var data: ChartData // now public
    public var title: String
    public var legend: String?
//    public var style: ChartStyle
//    public var darkModeStyle: ChartStyle
    public var form:CGSize
    public var dropShadow: Bool
//    public var cornerImage: Image?
//    @State var valueSpecifier:String = "%.1f"
    public var animatedToBack: Bool
    
//    public var allColorsLight: [Color]
//    public var allColorsDark: [Color]
    
    @State var formSize = ChartForm.medium
    @State var cornerImage = Image(systemName: "waveform.path.ecg")
    
    @State private var touchLocation: CGFloat = -1.0
    @State private var showValue: Bool = false
    @State private var showLabelValue: Bool = false
    @State private var currentValue: Double = 0 {
        didSet{
            if(oldValue != self.currentValue && self.showValue) {
                HapticFeedback.playSelection()
            }
        }
    }
//    var isFullWidth:Bool {
//        return self.formSize == ChartForm.large
//    }
    
    
    var isFullWidth = true
    
    
//    public init(data:ChartData, title: String, legend: String? = nil, form: CGSize? = ChartForm.medium, dropShadow: Bool? = true, cornerImage:Image? = Image(systemName: "waveform.path.ecg"), valueSpecifier: String? = "%.1f", animatedToBack: Bool = false){
//        self.data = data
//        self.title = title
//        self.legend = legend
////        self.style = style
////        self.darkModeStyle = style.darkModeStyle != nil ?  Color.red : Color.blue
//        self.formSize = form!
//        self.dropShadow = dropShadow!
//        self.cornerImage = cornerImage
//        self.valueSpecifier = valueSpecifier!
//        self.animatedToBack = animatedToBack
//        self.allColorsLight = allColorsLight
//        self.allColorsDark = allColorsDark
//    }
    
    public var body: some View {
        ZStack{
            Rectangle()
                .fill(self.colorScheme == .dark ?  Color.red : Color.clear)
                .cornerRadius(20)
//                .shadow(color: self.style.dropShadowColor, radius: self.dropShadow ? 8 : 0)
            VStack(alignment: .leading){
                HStack{
                    if(!showValue){
                        Text(self.title)
                            .font(.headline)
                            .foregroundColor(self.colorScheme == .dark ?  Color.red : Color.primary)
                    }else{
                        Text("\(self.currentValue, specifier: "%.1f")")
                            .font(.headline)
                            .foregroundColor(self.colorScheme == .dark ?  Color.red : Color.primary)
                    }
                    if(self.formSize == ChartForm.large && self.legend != nil && !showValue) {
                        Text(self.legend!)
                            .font(.callout)
                            .foregroundColor(self.colorScheme == .dark ? Color.red : Color.primary)
                            .transition(.opacity)
                            .animation(.easeOut)
                    }
                    Spacer()
                    self.cornerImage
                        .imageScale(.large)
                        .foregroundColor(self.colorScheme == .dark ?  Color.red : Color.secondary)
                }.padding()
                BarChartRowCustomNew(data: data.points.map{$0.1},
                            accentColor: self.colorScheme == .dark ?  Color.red : Color.blue,
                            allColors: self.colorScheme == .dark ?  [Color.red] : [Color.blue],
                            touchLocation: self.$touchLocation).environmentObject(reference)
                if self.legend != nil  && self.formSize == ChartForm.medium && !self.showLabelValue{
                    Text(self.legend!)
                        .font(.headline)
                        .foregroundColor(self.colorScheme == .dark ?  Color.red : Color.primary)
                        .padding()
                }else if (self.data.valuesGiven && self.getCurrentValue() != nil) {
                    LabelViewCustom(arrowOffset: self.getArrowOffset(touchLocation: self.touchLocation),
                              title: .constant(self.getCurrentValue()!.0))
                        .offset(x: self.getLabelViewOffset(touchLocation: self.touchLocation), y: -6)
                        .foregroundColor(self.colorScheme == .dark ?  Color.red : Color.blue)
                }
                
            }
        }.frame(minWidth:self.formSize.width,
                maxWidth: self.isFullWidth ? .infinity : self.formSize.width,
                minHeight:self.formSize.height,
                maxHeight:self.formSize.height)
            .gesture(DragGesture()
                .onChanged({ value in
                    self.touchLocation = value.location.x/self.formSize.width
                    self.showValue = true
                    self.currentValue = self.getCurrentValue()?.1 ?? 0
                    if(self.data.valuesGiven && self.formSize == ChartForm.medium) {
                        self.showLabelValue = true
                    }
                })
                .onEnded({ value in
                    if animatedToBack {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            withAnimation(Animation.easeOut(duration: 1)) {
                                self.showValue = false
                                self.showLabelValue = false
                                self.touchLocation = -1
                            }
                        }
                    } else {
                        self.showValue = false
                        self.showLabelValue = false
                        self.touchLocation = -1
                    }
                })
        )
            .gesture(TapGesture()
        )
    }
    
    func getArrowOffset(touchLocation:CGFloat) -> Binding<CGFloat> {
        let realLoc = (self.touchLocation * self.formSize.width) - 50
        if realLoc < 10 {
            return .constant(realLoc - 10)
        }else if realLoc > self.formSize.width-110 {
            return .constant((self.formSize.width-110 - realLoc) * -1)
        } else {
            return .constant(0)
        }
    }
    
    func getLabelViewOffset(touchLocation:CGFloat) -> CGFloat {
        return min(self.formSize.width-110,max(10,(self.touchLocation * self.formSize.width) - 50))
    }
    
    func getCurrentValue() -> (String,Double)? {
        guard self.data.points.count > 0 else { return nil}
        let index = max(0,min(self.data.points.count-1,Int(floor((self.touchLocation*self.formSize.width)/(self.formSize.width/CGFloat(self.data.points.count))))))
        return self.data.points[index]
    }
}
