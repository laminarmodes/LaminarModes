//
//  Colors.swift
//  LaminarModes
//
//  Created by Anya Traille on 7/8/21.
//

import SwiftUI

struct Colors: View
{
    @Environment(\.colorScheme) var colorScheme
    
    let vLight: [Color]
    let vDark: [Color]
    let pLight: [Color]
    let pDark: [Color]
    @State var contrastThreshold = 0.6
    
    init()
    {
        vLight = [Color.ViridisLightTheme.shade01,
                  Color.ViridisLightTheme.shade02,
                  Color.ViridisLightTheme.shade03,
                  Color.ViridisLightTheme.shade04,
                  Color.ViridisLightTheme.shade05,
                  Color.ViridisLightTheme.shade06,
                  Color.ViridisLightTheme.shade07,
                  Color.ViridisLightTheme.shade08,
                  Color.ViridisLightTheme.shade09,
                  Color.ViridisLightTheme.shade10]
        
        vDark = [Color.ViridisDarkTheme.shade01,
                  Color.ViridisDarkTheme.shade02,
                  Color.ViridisDarkTheme.shade03,
                  Color.ViridisDarkTheme.shade04,
                  Color.ViridisDarkTheme.shade05,
                  Color.ViridisDarkTheme.shade06,
                  Color.ViridisDarkTheme.shade07,
                  Color.ViridisDarkTheme.shade08,
                  Color.ViridisDarkTheme.shade09,
                  Color.ViridisDarkTheme.shade10]
        
        pLight = [Color.PlasmaLightTheme.shade01,
                  Color.PlasmaLightTheme.shade02,
                  Color.PlasmaLightTheme.shade03,
                  Color.PlasmaLightTheme.shade04,
                  Color.PlasmaLightTheme.shade05,
                  Color.PlasmaLightTheme.shade06,
                  Color.PlasmaLightTheme.shade07,
                  Color.PlasmaLightTheme.shade08,
                  Color.PlasmaLightTheme.shade09,
                  Color.PlasmaLightTheme.shade10]
        
        pDark = [Color.PlasmaLightTheme.shade01,
                  Color.PlasmaLightTheme.shade02,
                  Color.PlasmaLightTheme.shade03,
                  Color.PlasmaLightTheme.shade04,
                  Color.PlasmaLightTheme.shade05,
                  Color.PlasmaLightTheme.shade06,
                  Color.PlasmaLightTheme.shade07,
                  Color.PlasmaLightTheme.shade08,
                  Color.PlasmaLightTheme.shade09,
                  Color.PlasmaLightTheme.shade10]
        
        //contrastThreshold = 0.6
    }
    
    var body: some View
    {
            //Text("Warm Colors")
            HStack
            {
                ForEach(colorScheme == .dark ? pDark : pLight, id: \.self) { currentColor in
                    ZStack
                    {
                        RoundedRectangle(cornerRadius: 12.0)
                            .frame(width: 50, height: 50, alignment: .center)
                            .foregroundColor(currentColor)
                            .zIndex(1)
                        
                        Text("text")
                            .foregroundColor(
                                ((currentColor.cgColor?.components?[1] ?? 1)>0.6) ? Color.black.opacity(0.7) : Color.white.opacity(0.7))
                            .zIndex(2)
                    } // ZStack
                } // ForEach
            } // HStack

    } // body
} // Colors

extension Color
{
    enum ViridisLightTheme {
        static let shade01 = Color(hue: 288/360, saturation: 0.99, brightness: 0.33)
        static let shade02 = Color(hue: 264/360, saturation: 0.66, brightness: 0.47)
        static let shade03 = Color(hue: 230/360, saturation: 0.55, brightness: 0.54)
        static let shade04 = Color(hue: 205/360, saturation: 0.65, brightness: 0.56)
        static let shade05 = Color(hue: 187/360, saturation: 0.73, brightness: 0.56)
        static let shade06 = Color(hue: 170/360, saturation: 0.80, brightness: 0.62)
        
        
        
//        static let shade07 = Color(hue: 151/360, saturation: 0.71, brightness: 0.72)
//        static let shade08 = Color(hue: 110/360, saturation: 0.57, brightness: 0.80)
        static let shade07 = Color(hue: 151/360, saturation: 0.71, brightness: 0.52)
        static let shade08 = Color(hue: 110/360, saturation: 0.57, brightness: 0.60)
        
        
        
        
        static let shade09 = Color(hue: 74/360, saturation: 0.80, brightness: 0.87)
        static let shade10 = Color(hue: 54/360, saturation: 0.85, brightness: 0.99)
    }
    
    enum ViridisDarkTheme {
        static let shade01 = Color(hue: 288/360, saturation: 0.99, brightness: 0.33)
        static let shade02 = Color(hue: 264/360, saturation: 0.66, brightness: 0.47)
        static let shade03 = Color(hue: 230/360, saturation: 0.55, brightness: 0.54)
        static let shade04 = Color(hue: 205/360, saturation: 0.65, brightness: 0.56)
        static let shade05 = Color(hue: 187/360, saturation: 0.73, brightness: 0.56)
        static let shade06 = Color(hue: 170/360, saturation: 0.80, brightness: 0.62)
        static let shade07 = Color(hue: 151/360, saturation: 0.71, brightness: 0.72)
        static let shade08 = Color(hue: 110/360, saturation: 0.57, brightness: 0.80)
        static let shade09 = Color(hue: 74/360, saturation: 0.80, brightness: 0.87)
        static let shade10 = Color(hue: 54/360, saturation: 0.85, brightness: 0.99)
    }
    
    enum PlasmaLightTheme
    {
        static let shade01 = Color(hue: 242/360, saturation: 0.94, brightness: 0.53)
        static let shade02 = Color(hue: 266/360, saturation: 0.98, brightness: 0.62)
        static let shade03 = Color(hue: 281/360, saturation: 0.99, brightness: 0.66)
        static let shade04 = Color(hue: 299/360, saturation: 0.85, brightness: 0.62)
        static let shade05 = Color(hue: 325/360, saturation: 0.71, brightness: 0.74)
        static let shade06 = Color(hue: 351/360, saturation: 0.60, brightness: 0.85)
        
        
//        static let shade07 = Color(hue: 15/360, saturation: 0.65, brightness: 0.93)
//        static let shade08 = Color(hue: 31/360, saturation: 0.76, brightness: 0.98)
        static let shade07 = Color(hue: 15/360, saturation: 0.65, brightness: 0.63)
        static let shade08 = Color(hue: 31/360, saturation: 0.76, brightness: 0.78)
        
        
        
        static let shade09 = Color(hue: 45/360, saturation: 0.85, brightness: 0.99)
        static let shade10 = Color(hue: 63/360, saturation: 0.87, brightness: 0.98)
    }
    
    enum PlasmaDarkTheme
    {
        static let shade01 = Color(hue: 242/360, saturation: 0.94, brightness: 0.53)
        static let shade02 = Color(hue: 266/360, saturation: 0.98, brightness: 0.62)
        static let shade03 = Color(hue: 281/360, saturation: 0.99, brightness: 0.66)
        static let shade04 = Color(hue: 299/360, saturation: 0.85, brightness: 0.62)
        static let shade05 = Color(hue: 325/360, saturation: 0.71, brightness: 0.74)
        static let shade06 = Color(hue: 351/360, saturation: 0.60, brightness: 0.85)
        static let shade07 = Color(hue: 15/360, saturation: 0.65, brightness: 0.93)
        static let shade08 = Color(hue: 31/360, saturation: 0.76, brightness: 0.98)
        static let shade09 = Color(hue: 45/360, saturation: 0.85, brightness: 0.99)
        static let shade10 = Color(hue: 63/360, saturation: 0.87, brightness: 0.98)
    }
    
    enum NeumorphicLightTheme
    {
        static let main = Color(hue: 215, saturation: 0.24, brightness: 0.90)
        static let highlight = Color(hue: 0, saturation: 0, brightness: 1)
        static let shadow = Color(hue: 215, saturation: 0.23, brightness: 0.71)
    }
    
    enum TextLightTheme
    {
        static let textColorOnDark = Color(hue: 360, saturation: 0, brightness: 1)
        static let textColorOnLight = Color(hue: 0, saturation: 1, brightness: 0)
    }
}

struct Colors_Previews: PreviewProvider
{
    static var previews: some View
    {
        Group {
            Colors()
                .preferredColorScheme(.light)
            Colors()
                .preferredColorScheme(.dark)
        }
            
    }
}
