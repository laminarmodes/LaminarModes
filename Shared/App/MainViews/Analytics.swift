//
//  Analytics.swift
//  LaminarModes
//
//  Created by Anya Traille on 8/8/21.
//

import SwiftUI
import SwiftUICharts

struct Analytics: View {
    
    @EnvironmentObject private var reference: Reference
    @State var projectID: Int
    
    let screenWidth = UIScreen.main.bounds.size.width
    var columnWidth: CGFloat = 100.0
    
    var body: some View {
        VStack
        {

            HStack
            {
                BarChartView(data: ChartData(points: [55.0,48.0,46.0,32.0,28.0,20.0,12.0,4.0,3.0]), title: "Chart Data is WIP", legend: "role", style: Styles.barChartStyleNeonBlueLight, form: CGSize(width: CGFloat(screenWidth-16), height: CGFloat(220)), dropShadow: false)

            }
            .padding(.top, 16)
            .padding(.bottom,16)

            LineChartView(data: [8,23,54,32,12,37,7,23,43], title: "Chart Data is WIP", form: CGSize(width: screenWidth-16, height: 220), dropShadow: false)
                .frame(maxWidth: 640)
        }
        .onAppear() {
            DispatchQueue.main.async {
                self.reference.referenceProjectID = self.projectID
            }
        }
        
    }
}

struct Analytics_Previews: PreviewProvider {
    static var previews: some View {
        Analytics(projectID: 1)
            .environmentObject(Reference())
    }
}
