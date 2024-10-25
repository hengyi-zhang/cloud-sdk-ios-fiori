import Foundation

@available(watchOS, unavailable)
struct PaletteV8: PaletteProvider {
    /// :nodoc:
    public let uuid = UUID()
    
    /// :nodoc:
    public static let `default` = Palette(PaletteV8())
    
    let version: PaletteVersion = .v8
    
    private init() {}
    
    public var colorDefinitions: [ColorStyle: HexColor] = [
        .grey1: HexColor(lightColor: "12171CFF", darkColor: "F5F6F7FF", contrastLightColor: "1C242BFF", contrastDarkColor: "EAECEEFF"),
        .grey2: HexColor(lightColor: "1A2733FF", darkColor: "EAECEEFF", contrastLightColor: "22313FFF", contrastDarkColor: "D5DADDFF"),
        .grey3: HexColor(lightColor: "223548FF", darkColor: "D5DADDFF", contrastLightColor: "2B3E4FFF", contrastDarkColor: "A9B4BEFF"),
        .grey4: HexColor(lightColor: "354A5FFF", darkColor: "A9B4BEFF", contrastLightColor: "364D63FF", contrastDarkColor: "96A6B5FF"),
        .grey5: HexColor(lightColor: "475E75FF", darkColor: "8396A8FF", contrastLightColor: "3F5A73FF", contrastDarkColor: "8799ABFF"),
        .grey6: HexColor(lightColor: "5B738BFF", darkColor: "5B738BFF", contrastLightColor: "5B738BFF", contrastDarkColor: "5B738BFF"),
        .grey7: HexColor(lightColor: "8396A8FF", darkColor: "475E75FF", contrastLightColor: "A5B0BBFF", contrastDarkColor: "354A5FFF"),
        .grey8: HexColor(lightColor: "A9B4BEFF", darkColor: "354A5FFF", contrastLightColor: "C0C9CEFF", contrastDarkColor: "223548FF"),
        .grey9: HexColor(lightColor: "D5DADDFF", darkColor: "223548FF", contrastLightColor: "D7DBE0FF", contrastDarkColor: "1A2733FF"),
        .grey10: HexColor(lightColor: "EAECEEFF", darkColor: "1A2733FF", contrastLightColor: "E8EBEDFF", contrastDarkColor: "12171CFF"),
        .grey11: HexColor(lightColor: "F5F6F7FF", darkColor: "12171CFF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .red1: HexColor(lightColor: "350000FF", darkColor: "FFEAF4FF", contrastLightColor: "470000FF", contrastDarkColor: "FFE0F0FF"),
        .red2: HexColor(lightColor: "5A0404FF", darkColor: "FFD5EAFF", contrastLightColor: "5D0404FF", contrastDarkColor: "FFBDD8FF"),
        .red3: HexColor(lightColor: "840606FF", darkColor: "FFB2D2FF", contrastLightColor: "790606FF", contrastDarkColor: "FF99BBFF"),
        .red4: HexColor(lightColor: "AA0808FF", darkColor: "FF8CB2FF", contrastLightColor: "970707FF", contrastDarkColor: "FF7596FF"),
        .red5: HexColor(lightColor: "D20A0AFF", darkColor: "FF5C77FF", contrastLightColor: "B40808FF", contrastDarkColor: "FF5C77FF"),
        .red6: HexColor(lightColor: "EE3939FF", darkColor: "EE3939FF", contrastLightColor: "D20A0AFF", contrastDarkColor: "D20A0AFF"),
        .red7: HexColor(lightColor: "FF5C77FF", darkColor: "D20A0AFF", contrastLightColor: "FF8AB9FF", contrastDarkColor: "9C0707FF"),
        .red8: HexColor(lightColor: "FF8CB2FF", darkColor: "AA0808FF", contrastLightColor: "FFADD1FF", contrastDarkColor: "7F0505FF"),
        .red9: HexColor(lightColor: "FFB2D2FF", darkColor: "840606FF", contrastLightColor: "FFD6EBFF", contrastDarkColor: "4E0303FF"),
        .red10: HexColor(lightColor: "FFD5EAFF", darkColor: "5A0404FF", contrastLightColor: "FFEAF4FF", contrastDarkColor: "350000FF"),
        .red11: HexColor(lightColor: "FFEAF4FF", darkColor: "350000FF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .mango1: HexColor(lightColor: "450B00FF", darkColor: "FFF8D6FF", contrastLightColor: "470B00FF", contrastDarkColor: "FFF3B8FF"),
        .mango2: HexColor(lightColor: "6D1900FF", darkColor: "FFF3B8FF", contrastLightColor: "611700FF", contrastDarkColor: "FFE17AFF"),
        .mango3: HexColor(lightColor: "8D2A00FF", darkColor: "FFDF72FF", contrastLightColor: "7A2500FF", contrastDarkColor: "FFCB52FF"),
        .mango4: HexColor(lightColor: "A93E00FF", darkColor: "FFC933FF", contrastLightColor: "853100FF", contrastDarkColor: "FFAB24FF"),
        .mango5: HexColor(lightColor: "C35500FF", darkColor: "FFB300FF", contrastLightColor: "993800FF", contrastDarkColor: "F58F00FF"),
        .mango6: HexColor(lightColor: "E76500FF", darkColor: "E76500FF", contrastLightColor: "C25400FF", contrastDarkColor: "C35500FF"),
        .mango7: HexColor(lightColor: "FFB300FF", darkColor: "C35500FF", contrastLightColor: "EBA400FF", contrastDarkColor: "853100FF"),
        .mango8: HexColor(lightColor: "FFC933FF", darkColor: "A93E00FF", contrastLightColor: "FFD970FF", contrastDarkColor: "702100FF"),
        .mango9: HexColor(lightColor: "FFDF72FF", darkColor: "8D2A00FF", contrastLightColor: "FFEDADFF", contrastDarkColor: "450B00FF"),
        .mango10: HexColor(lightColor: "FFF3B8FF", darkColor: "6D1900FF", contrastLightColor: "FFF8D6FF", contrastDarkColor: "290700FF"),
        .mango11: HexColor(lightColor: "FFF8D6FF", darkColor: "450B00FF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .green1: HexColor(lightColor: "0E2B16FF", darkColor: "F5FAE5FF", contrastLightColor: "0D2614FF", contrastDarkColor: "EAF4C7FF"),
        .green2: HexColor(lightColor: "164323FF", darkColor: "EBF5CBFF", contrastLightColor: "12361CFF", contrastDarkColor: "B6E779FF"),
        .green3: HexColor(lightColor: "1E592FFF", darkColor: "BDE986FF", contrastLightColor: "184927FF", contrastDarkColor: "93DC38FF"),
        .green4: HexColor(lightColor: "256F3AFF", darkColor: "97DD40FF", contrastLightColor: "1D5827FF", contrastDarkColor: "62CC24FF"),
        .green5: HexColor(lightColor: "188918FF", darkColor: "5DC122FF", contrastLightColor: "216327FF", contrastDarkColor: "56B21FFF"),
        .green6: HexColor(lightColor: "36A41DFF", darkColor: "36A41DFF", contrastLightColor: "188918FF", contrastDarkColor: "188918FF"),
        .green7: HexColor(lightColor: "5DC122FF", darkColor: "188918FF", contrastLightColor: "5FC723FF", contrastDarkColor: "1C542CFF"),
        .green8: HexColor(lightColor: "97DD40FF", darkColor: "256F3AFF", contrastLightColor: "BDE986FF", contrastDarkColor: "164323FF"),
        .green9: HexColor(lightColor: "BDE986FF", darkColor: "1E592FFF", contrastLightColor: "E0F0B2FF", contrastDarkColor: "0E2B16FF"),
        .green10: HexColor(lightColor: "EBF5CBFF", darkColor: "164323FF", contrastLightColor: "F5FAE5FF", contrastDarkColor: "091B0EFF"),
        .green11: HexColor(lightColor: "F5FAE5FF", darkColor: "0E2B16FF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .teal1: HexColor(lightColor: "012931FF", darkColor: "DAFDF5FF", contrastLightColor: "01262DFF", contrastDarkColor: "C2FCEEFF"),
        .teal2: HexColor(lightColor: "02414CFF", darkColor: "C2FCEEFF", contrastLightColor: "023640FF", contrastDarkColor: "84F1DBFF"),
        .teal3: HexColor(lightColor: "035663FF", darkColor: "64EDD2FF", contrastLightColor: "024550FF", contrastDarkColor: "3BE2C4FF"),
        .teal4: HexColor(lightColor: "046C7AFF", darkColor: "2CE0BFFF", contrastLightColor: "03535EFF", contrastDarkColor: "1ECDB2FF"),
        .teal5: HexColor(lightColor: "07838FFF", darkColor: "00CEACFF", contrastLightColor: "04606CFF", contrastDarkColor: "00B295FF"),
        .teal6: HexColor(lightColor: "049F9AFF", darkColor: "049F9AFF", contrastLightColor: "07828DFF", contrastDarkColor: "07828DFF"),
        .teal7: HexColor(lightColor: "00CEACFF", darkColor: "07838FFF", contrastLightColor: "00C7C0FF", contrastDarkColor: "03535EFF"),
        .teal8: HexColor(lightColor: "2CE0BFFF", darkColor: "046C7AFF", contrastLightColor: "64EDD1FF", contrastDarkColor: "02404BFF"),
        .teal9: HexColor(lightColor: "64EDD2FF", darkColor: "035663FF", contrastLightColor: "A7FBE7FF", contrastDarkColor: "012A32FF"),
        .teal10: HexColor(lightColor: "C2FCEEFF", darkColor: "02414CFF", contrastLightColor: "D8FDF4FF", contrastDarkColor: "01191EFF"),
        .teal11: HexColor(lightColor: "DAFDF5FF", darkColor: "012931FF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .blue1: HexColor(lightColor: "00144AFF", darkColor: "EBF8FFFF", contrastLightColor: "001A61FF", contrastDarkColor: "D1EFFFFF"),
        .blue2: HexColor(lightColor: "002A86FF", darkColor: "D1EFFFFF", contrastLightColor: "002880FF", contrastDarkColor: "A3DFFFFF"),
        .blue3: HexColor(lightColor: "0040B0FF", darkColor: "A6E0FFFF", contrastLightColor: "003899FF", contrastDarkColor: "7ACCFFFF"),
        .blue4: HexColor(lightColor: "0057D2FF", darkColor: "89D1FFFF", contrastLightColor: "0046A8FF", contrastDarkColor: "5CB6FFFF"),
        .blue5: HexColor(lightColor: "0070F2FF", darkColor: "4DB1FFFF", contrastLightColor: "0051C2FF", contrastDarkColor: "3399FFFF"),
        .blue6: HexColor(lightColor: "1B90FFFF", darkColor: "1B90FFFF", contrastLightColor: "0070F0FF", contrastDarkColor: "0070F0FF"),
        .blue7: HexColor(lightColor: "4DB1FFFF", darkColor: "0070F2FF", contrastLightColor: "57B6FFFF", contrastDarkColor: "0046A8FF"),
        .blue8: HexColor(lightColor: "89D1FFFF", darkColor: "0057D2FF", contrastLightColor: "A3DFFFFF", contrastDarkColor: "002A85FF"),
        .blue9: HexColor(lightColor: "A6E0FFFF", darkColor: "0040B0FF", contrastLightColor: "CCEDFFFF", contrastDarkColor: "001E70FF"),
        .blue10: HexColor(lightColor: "D1EFFFFF", darkColor: "002A86FF", contrastLightColor: "EBF8FFFF", contrastDarkColor: "00144DFF"),
        .blue11: HexColor(lightColor: "EBF8FFFF", darkColor: "00144AFF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .indigo1: HexColor(lightColor: "0E0637FF", darkColor: "F1ECFFFF", contrastLightColor: "1A0B65FF", contrastDarkColor: "ECE5FFFF"),
        .indigo2: HexColor(lightColor: "1C0C6EFF", darkColor: "E2D8FFFF", contrastLightColor: "240F8AFF", contrastDarkColor: "DDC7FFFF"),
        .indigo3: HexColor(lightColor: "2C13ADFF", darkColor: "D3B6FFFF", contrastLightColor: "2D13AEFF", contrastDarkColor: "C2A3FFFF"),
        .indigo4: HexColor(lightColor: "470CEDFF", darkColor: "B894FFFF", contrastLightColor: "400BD0FF", contrastDarkColor: "AD8FFFFF"),
        .indigo5: HexColor(lightColor: "5D36FFFF", darkColor: "9B76FFFF", contrastLightColor: "581FF4FF", contrastDarkColor: "A180F9FF"),
        .indigo6: HexColor(lightColor: "7858FFFF", darkColor: "7858FFFF", contrastLightColor: "8055F6FF", contrastDarkColor: "8055F6FF"),
        .indigo7: HexColor(lightColor: "9B76FFFF", darkColor: "5D36FFFF", contrastLightColor: "B8A2FBFF", contrastDarkColor: "460CE4FF"),
        .indigo8: HexColor(lightColor: "B894FFFF", darkColor: "470CEDFF", contrastLightColor: "D4B8FFFF", contrastDarkColor: "28119CFF"),
        .indigo9: HexColor(lightColor: "D3B6FFFF", darkColor: "2C13ADFF", contrastLightColor: "DDD1FFFF", contrastDarkColor: "1A0B65FF"),
        .indigo10: HexColor(lightColor: "E2D8FFFF", darkColor: "1C0C6EFF", contrastLightColor: "F0EBFFFF", contrastDarkColor: "0E0637FF"),
        .indigo11: HexColor(lightColor: "F1ECFFFF", darkColor: "0E0637FF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .pink1: HexColor(lightColor: "28004AFF", darkColor: "FFF0FAFF", contrastLightColor: "340060FF", contrastDarkColor: "FFE0F5FF"),
        .pink2: HexColor(lightColor: "510080FF", darkColor: "FFDCF3FF", contrastLightColor: "4D007AFF", contrastDarkColor: "FFB8EEFF"),
        .pink3: HexColor(lightColor: "7800A4FF", darkColor: "FFAFEDFF", contrastLightColor: "640089FF", contrastDarkColor: "FF99F1FF"),
        .pink4: HexColor(lightColor: "A100C2FF", darkColor: "FF8AF0FF", contrastLightColor: "7F0099FF", contrastDarkColor: "F87CF6FF"),
        .pink5: HexColor(lightColor: "CC00DCFF", darkColor: "F65AF2FF", contrastLightColor: "9400B2FF", contrastDarkColor: "F65AF1FF"),
        .pink6: HexColor(lightColor: "F31DEDFF", darkColor: "F31DEDFF", contrastLightColor: "CC00DBFF", contrastDarkColor: "CC00DBFF"),
        .pink7: HexColor(lightColor: "F65AF2FF", darkColor: "CC00DCFF", contrastLightColor: "F781F3FF", contrastDarkColor: "7F0099FF"),
        .pink8: HexColor(lightColor: "FF8AF0FF", darkColor: "A100C2FF", contrastLightColor: "FFA3EEFF", contrastDarkColor: "510080FF"),
        .pink9: HexColor(lightColor: "FFAFEDFF", darkColor: "7800A4FF", contrastLightColor: "FFD1EFFF", contrastDarkColor: "400066FF"),
        .pink10: HexColor(lightColor: "FFDCF3FF", darkColor: "510080FF", contrastLightColor: "FFF0FAFF", contrastDarkColor: "240042FF"),
        .pink11: HexColor(lightColor: "FFF0FAFF", darkColor: "28004AFF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .raspberry1: HexColor(lightColor: "510136FF", darkColor: "FFF0F5FF", contrastLightColor: "41002BFF", contrastDarkColor: "FFE5EEFF"),
        .raspberry2: HexColor(lightColor: "71014BFF", darkColor: "FFDCE8FF", contrastLightColor: "60003FFF", contrastDarkColor: "FFC1D6FF"),
        .raspberry3: HexColor(lightColor: "9B015DFF", darkColor: "FECBDAFF", contrastLightColor: "7E004CFF", contrastDarkColor: "FDA0BAFF"),
        .raspberry4: HexColor(lightColor: "BA066CFF", darkColor: "FEADC8FF", contrastLightColor: "940456FF", contrastDarkColor: "FD81ABFF"),
        .raspberry5: HexColor(lightColor: "FE83AEFF", darkColor: "FE83AEFF", contrastLightColor: "AD0564FF", contrastDarkColor: "FE6198FF"),
        .raspberry6: HexColor(lightColor: "FA4F96FF", darkColor: "FA4F96FF", contrastLightColor: "DD1177FF", contrastDarkColor: "E2127AFF"),
        .raspberry7: HexColor(lightColor: "FE83AEFF", darkColor: "DF1278FF", contrastLightColor: "FD8A8EFF", contrastDarkColor: "8A0450FF"),
        .raspberry8: HexColor(lightColor: "FEADC8FF", darkColor: "BA066CFF", contrastLightColor: "FDAAB1FF", contrastDarkColor: "6F014AFF"),
        .raspberry9: HexColor(lightColor: "FECBDAFF", darkColor: "9B015DFF", contrastLightColor: "FFDBE1FF", contrastDarkColor: "510136FF"),
        .raspberry10: HexColor(lightColor: "FFDCE8FF", darkColor: "71014BFF", contrastLightColor: "FFF0F5FF", contrastDarkColor: "320021FF"),
        .raspberry11: HexColor(lightColor: "FFF0F5FF", darkColor: "510136FF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .baseWhite: HexColor(lightColor: "FFFFFFFF", darkColor: "FFFFFFFF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "FFFFFFFF"),
        .baseBlack: HexColor(lightColor: "000000FF", darkColor: "000000FF", contrastLightColor: "000000FF", contrastDarkColor: "000000FF"),
        .base1: HexColor(lightColor: "FFFFFFFF", darkColor: "000000FF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .base2: HexColor(lightColor: "000000FF", darkColor: "FFFFFFFF", contrastLightColor: "000000FF", contrastDarkColor: "FFFFFFFF"),
        /// Accent Colors
        .accentLabel1: HexColor(lightColor: "FFDF72FF", darkColor: "A93E00FF", contrastLightColor: "FFF3B8FF", contrastDarkColor: "702100FF"),
        .accentLabel2: HexColor(lightColor: "FFB2D2FF", darkColor: "AA0808FF", contrastLightColor: "FFE0F0FF", contrastDarkColor: "7F0505FF"),
        .accentLabel3: HexColor(lightColor: "FECBDAFF", darkColor: "BA066CFF", contrastLightColor: "FFE5EEFF", contrastDarkColor: "6F014AFF"),
        .accentLabel4: HexColor(lightColor: "FFAFEDFF", darkColor: "A110C2FF", contrastLightColor: "FFE0F5FF", contrastDarkColor: "510080FF"),
        .accentLabel5: HexColor(lightColor: "D3B6FFFF", darkColor: "470CEDFF", contrastLightColor: "ECE5FFFF", contrastDarkColor: "28119CFF"),
        .accentLabel6: HexColor(lightColor: "A6E0FFFF", darkColor: "0057D2FF", contrastLightColor: "D1EFFFFF", contrastDarkColor: "002A85FF"),
        .accentLabel7: HexColor(lightColor: "64EDD2FF", darkColor: "046C7AFF", contrastLightColor: "C2FCEEFF", contrastDarkColor: "02404BFF"),
        .accentLabel8: HexColor(lightColor: "BDE986FF", darkColor: "256F3AFF", contrastLightColor: "EAF4C7FF", contrastDarkColor: "164323FF"),
        .accentLabel9: HexColor(lightColor: "D0B8EAFF", darkColor: "6C32A9FF", contrastLightColor: "CDB4E9FF", contrastDarkColor: "56248FFF"),
        .accentLabel10: HexColor(lightColor: "D5DADDFF", darkColor: "354A5FFF", contrastLightColor: "EAECEEFF", contrastDarkColor: "223548FF"),
        .accentBackground1: HexColor(lightColor: "8D2A00FF", darkColor: "FFF3B8FF", contrastLightColor: "853100FF", contrastDarkColor: "FFE17AFF"),
        .accentBackground2: HexColor(lightColor: "840606FF", darkColor: "FFD5EAFF", contrastLightColor: "9C0707FF", contrastDarkColor: "FFBDD8FF"),
        .accentBackground3: HexColor(lightColor: "9B015DFF", darkColor: "FFDCE8FF", contrastLightColor: "8B0450FF", contrastDarkColor: "FFC2D7FF"),
        .accentBackground4: HexColor(lightColor: "7800A4FF", darkColor: "FFDCF3FF", contrastLightColor: "800099FF", contrastDarkColor: "FFB8EFFF"),
        .accentBackground5: HexColor(lightColor: "2C13ADFF", darkColor: "E2D8FFFF", contrastLightColor: "440CE4FF", contrastDarkColor: "DDC7FFFF"),
        .accentBackground6: HexColor(lightColor: "0040B0FF", darkColor: "D1EFFFFF", contrastLightColor: "0046A8FF", contrastDarkColor: "A3DFFFFF"),
        .accentBackground7: HexColor(lightColor: "035663FF", darkColor: "C2FCEEFF", contrastLightColor: "03535EFF", contrastDarkColor: "83F1DBFF"),
        .accentBackground8: HexColor(lightColor: "1E592FFF", darkColor: "EBF5CBFF", contrastLightColor: "1C542CFF", contrastDarkColor: "B6E779FF"),
        .accentBackground9: HexColor(lightColor: "511F89FF", darkColor: "DDCCF0FF", contrastLightColor: "401E67FF", contrastDarkColor: "D3BEFFFF"),
        .accentBackground10: HexColor(lightColor: "223548FF", darkColor: "EAECEEFF", contrastLightColor: "354A5FFF", contrastDarkColor: "D5DADDFF"),
        /// Shadow Colors
        .cardShadow: HexColor(lightColor: "0000004D", darkColor: "5B738B14", contrastLightColor: "0000004D", contrastDarkColor: "00000014"),
        .sectionShadow: HexColor(lightColor: "0000005E", darkColor: "5B738B3D", contrastLightColor: "0000005E", contrastDarkColor: "0000003D"),
        /// Background Colors
        .primaryBackground: HexColor(lightColor: "000000FF", darkColor: "FFFFFFFF", elevatedLightColor: "171D23FF", contrastLightColor: "000000FF", contrastDarkColor: "FFFFFFFF", elevatedContrastLightColor: "192024FF"),
        .secondaryBackground: HexColor(lightColor: "161C21FF", darkColor: "F5F6F7FF", elevatedLightColor: "242D37FF", contrastLightColor: "1D252AFF", contrastDarkColor: "EAECEEFF", elevatedContrastLightColor: "212B30FF"),
        .tertiaryBackground: HexColor(lightColor: "242E38FF", darkColor: "FFFFFFFF", elevatedLightColor: "2F3C48FF", contrastLightColor: "192024FF", contrastDarkColor: "FFFFFFFF", elevatedContrastLightColor: "253136FF"),
        .primaryGroupedBackground: HexColor(lightColor: "000000FF", darkColor: "F5F6F7FF", elevatedLightColor: "171D23FF", contrastLightColor: "000000FF", contrastDarkColor: "E8EBEDFF", elevatedContrastLightColor: "192024FF"),
        .secondaryGroupedBackground: HexColor(lightColor: "161C21FF", darkColor: "FFFFFFFF", elevatedLightColor: "242D37FF", contrastLightColor: "1D252AFF", contrastDarkColor: "FFFFFFFF", elevatedContrastLightColor: "212B30FF"),
        .tertiaryGroupedBackground: HexColor(lightColor: "242E38FF", darkColor: "F5F6F7FF", elevatedLightColor: "2F3C48FF", contrastLightColor: "192024FF", contrastDarkColor: "E8ECEEFF", elevatedContrastLightColor: "253136FF"),
        /// Label Colors
        .navBarTitleLabel: HexColor(lightColor: "F5F6F7FF", darkColor: "223548FF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .primaryLabel: HexColor(lightColor: "F5F6F7FF", darkColor: "223548FF", contrastLightColor: "FFFFFFFF", contrastDarkColor: "000000FF"),
        .secondaryLabel: HexColor(lightColor: "D5DADDFF", darkColor: "475E75FF", contrastLightColor: "EAECEEFF", contrastDarkColor: "223548FF"),
        .tertiaryLabel: HexColor(lightColor: "A9B4BEFF", darkColor: "5B738BFF", contrastLightColor: "D5DADDFF", contrastDarkColor: "354A5FFF"),
        .quaternaryLabel: HexColor(lightColor: "A9B4BE4D", darkColor: "8396A875", contrastLightColor: "A9B4BE80", contrastDarkColor: "354A5F57"),
        .quinaryLabel: HexColor(lightColor: "000000FF", darkColor: "FFFFFFFF", contrastLightColor: "000000FF", contrastDarkColor: "FFFFFFFF"),
        /// Fill Colors
        .primaryFill: HexColor(lightColor: "8396A84D", darkColor: "8396A83D", contrastLightColor: "8396A866", contrastDarkColor: "8799AB57"),
        .secondaryFill: HexColor(lightColor: "8396A847", darkColor: "8396A833", contrastLightColor: "8396A861", contrastDarkColor: "8799AB4D"),
        .tertiaryFill: HexColor(lightColor: "8396A833", darkColor: "8396A826", contrastLightColor: "8396A84D", contrastDarkColor: "8799AB40"),
        .quaternaryFill: HexColor(lightColor: "8396A829", darkColor: "8396A817", contrastLightColor: "8396A838", contrastDarkColor: "8799AB1A"),
        /// Tint Colors
        .tintColor: HexColor(lightColor: "4DB1FFFF", darkColor: "0070F2FF", contrastLightColor: "5CB7FFFF", contrastDarkColor: "0046A8FF"),
        .tintColor2: HexColor(lightColor: "4DB1FFFF", darkColor: "0057D2FF", contrastLightColor: "5CB7FFFF", contrastDarkColor: "002A85FF"),
        .tintColor3: HexColor(lightColor: "4DB1FF29", darkColor: "0070F214", contrastLightColor: "5CB7FF29", contrastDarkColor: "0070F014"),
        .tintColorTapState: HexColor(lightColor: "1B90FFFF", darkColor: "0040B0FF", contrastLightColor: "3399FFFF", contrastDarkColor: "001E70FF"),
        /// Semantic Colors
        .negativeLabel: HexColor(lightColor: "FF5C77FF", darkColor: "AA0808FF", contrastLightColor: "FF8CB2FF", contrastDarkColor: "7F0505FF"),
        .positiveLabel: HexColor(lightColor: "5DC122FF", darkColor: "256F3AFF", contrastLightColor: "97DD40FF", contrastDarkColor: "164323FF"),
        .criticalLabel: HexColor(lightColor: "FFB300FF", darkColor: "A93E00FF", contrastLightColor: "FFC933FF", contrastDarkColor: "702100FF"),
        .informativeLabel: HexColor(lightColor: "4DB1FFFF", darkColor: "0057D2FF", contrastLightColor: "89D1FFFF", contrastDarkColor: "002A85FF"),
        .neutralLabel: HexColor(lightColor: "8396A8FF", darkColor: "354A5FFF", contrastLightColor: "A9B4BEFF", contrastDarkColor: "223548FF"),
        .negativeLabelTapState: HexColor(lightColor: "EE3939FF", darkColor: "840606FF", contrastLightColor: "FF5C77FF", contrastDarkColor: "4E0303FF"),
        .positiveLabelTapState: HexColor(lightColor: "36A41DFF", darkColor: "1E592FFF", contrastLightColor: "56B21FFF", contrastDarkColor: "0E2B16FF"),
        .criticalLabelTapState: HexColor(lightColor: "FFB300FF", darkColor: "8D2A00FF", contrastLightColor: "F58F00FF", contrastDarkColor: "450B00FF"),
        .informativeLabelTapState: HexColor(lightColor: "1B90FFFF", darkColor: "0040B0FF", contrastLightColor: "3399FFFF", contrastDarkColor: "001E70FF"),
        .neutralLabelTapState: HexColor(lightColor: "8396A8FF", darkColor: "223548FF", contrastLightColor: "8799ABFF", contrastDarkColor: "1A2733FF"),
        .negativeBackground: HexColor(lightColor: "EE39391F", darkColor: "EE393914", contrastLightColor: "FF5C771F", contrastDarkColor: "D20A0A14"),
        .positiveBackground: HexColor(lightColor: "36A41D1F", darkColor: "36A41D14", contrastLightColor: "56B21F1F", contrastDarkColor: "18891814"),
        .criticalBackground: HexColor(lightColor: "E765001F", darkColor: "E7650014", contrastLightColor: "F58F001F", contrastDarkColor: "C3550014"),
        .informationBackground: HexColor(lightColor: "1B90FF1F", darkColor: "1B90FF14", contrastLightColor: "3399FF1F", contrastDarkColor: "0070F014"),
        .neutralBackground: HexColor(lightColor: "5B738B1F", darkColor: "5B738B14", contrastLightColor: "8799AB1F", contrastDarkColor: "5B738B14"),
        .negativeBackgroundTapState: HexColor(lightColor: "EE393938", darkColor: "EE393929", contrastLightColor: "FF5C7738", contrastDarkColor: "D20A0A29"),
        .positiveBackgroundTapState: HexColor(lightColor: "36A41D38", darkColor: "36A41D29", contrastLightColor: "56B21F38", contrastDarkColor: "18891829"),
        .criticalBackgroundTapState: HexColor(lightColor: "E7650038", darkColor: "E7650029", contrastLightColor: "F58F0038", contrastDarkColor: "C3550029"),
        .informationBackgroundTapState: HexColor(lightColor: "1B90FF38", darkColor: "1B90FF29", contrastLightColor: "3399FF38", contrastDarkColor: "0070F029"),
        .neutralBackgroundTapState: HexColor(lightColor: "5B738B38", darkColor: "5B738B29", contrastLightColor: "8799AB38", contrastDarkColor: "5B738B29"),
        /// Separator Colors
        .separator: HexColor(lightColor: "8396A85E", darkColor: "5B738B5E", contrastLightColor: "A9B4BE5E", contrastDarkColor: "354A5F5E"),
        .separatorOpaque: HexColor(lightColor: "8396A8D4", darkColor: "5B738BD4", contrastLightColor: "A9B4BED4", contrastDarkColor: "354A5FD4"),
        /// UI Materials Colors
        .header: HexColor(lightColor: "161C21FF", darkColor: "FFFFFFFF", elevatedLightColor: "242E38FF", contrastLightColor: "1D252CFF", contrastDarkColor: "FFFFFFFF", elevatedContrastLightColor: "2A3540FF"),
        .headerBlended: HexColor(lightColor: "13181DE6", darkColor: "FFFFFFD9", elevatedLightColor: "1F272FE6", contrastLightColor: "191F26DE6", contrastDarkColor: "FFFFFFD9", elevatedContrastLightColor: "242E38E6"),
        .barTransparent: HexColor(lightColor: "12171CD9", darkColor: "12171CD9", contrastLightColor: "000000D9", contrastDarkColor: "000000D9"),
        .contrastElement: HexColor(lightColor: "8396A8FF", darkColor: "5B738BFF", contrastLightColor: "96A6B5FF", contrastDarkColor: "354A5FFF"),
        .footer: HexColor(lightColor: "192027FF", darkColor: "FFFFFFFF", elevatedLightColor: "1F272FE6", contrastLightColor: "1C242BFF", contrastDarkColor: "FFFFFFFF", elevatedContrastLightColor: "2B3641FF"),
        .cellBackground: HexColor(lightColor: "22354800", darkColor: "FFFFFF00", contrastLightColor: "1A273300", contrastDarkColor: "FFFFFF00"),
        .chrome: HexColor(lightColor: "000000BF", darkColor: "FFFFFFD9", elevatedLightColor: "171D23BF", contrastLightColor: "000000E6", contrastDarkColor: "FFFFFFE6", elevatedContrastLightColor: "192024E6"),
        .chromeSecondary: HexColor(lightColor: "161C21BF", darkColor: "FFFFFFD9", elevatedLightColor: "242D37BF", contrastLightColor: "1D252AE6", contrastDarkColor: "FFFFFFE6", elevatedContrastLightColor: "212B30E6"),
        /// Chart Colors
        .chart1: HexColor(lightColor: "3278BEFF", darkColor: "3278BEFF", contrastLightColor: "8BABCBFF", contrastDarkColor: "446E97FF"),
        .chart2: HexColor(lightColor: "F2A634FF", darkColor: "C87B00FF", contrastLightColor: "ED8859FF", contrastDarkColor: "D74114FF"),
        .chart3: HexColor(lightColor: "B4CE35FF", darkColor: "75980BFF", contrastLightColor: "9FB822FF", contrastDarkColor: "2D6F51FF"),
        .chart4: HexColor(lightColor: "FA4F96FF", darkColor: "DF1278FF", contrastLightColor: "FE74AEFF", contrastDarkColor: "DF1278FF"),
        .chart5: HexColor(lightColor: "8B47D7FF", darkColor: "8B47D7FF", contrastLightColor: "C092F6FF", contrastDarkColor: "7D44CFFF"),
        .chart6: HexColor(lightColor: "049F9AFF", darkColor: "049F9AFF", contrastLightColor: "05C0BAFF", contrastDarkColor: "03778CFF"),
        .chart7: HexColor(lightColor: "0070F2FF", darkColor: "0070F2FF", contrastLightColor: "57A5FFFF", contrastDarkColor: "0070F2FF"),
        .chart8: HexColor(lightColor: "F31DEDFF", darkColor: "CC00DCFF", contrastLightColor: "F473F0FF", contrastDarkColor: "AE478DFF"),
        .chart9: HexColor(lightColor: "8EA18CFF", darkColor: "798C77FF", contrastLightColor: "9DAD9BFF", contrastDarkColor: "667664FF"),
        .chart10: HexColor(lightColor: "F28585FF", darkColor: "DA6C6CFF", contrastLightColor: "F28585FF", contrastDarkColor: "B75757FF"),
        .chart11: HexColor(lightColor: "7858FFFF", darkColor: "5D36FFFF", contrastLightColor: "9EA3F6FF", contrastDarkColor: "4B25E7FF"),
        .chart12: HexColor(lightColor: "A68A5BFF", darkColor: "A68A5BFF", contrastLightColor: "B49E78FF", contrastDarkColor: "816246FF"),
        .stockUpStroke: HexColor(lightColor: "30914CFF", darkColor: "30914CFF", contrastLightColor: "99CC99FF", contrastDarkColor: "006362FF"),
        .stockDownStroke: HexColor(lightColor: "F83030FF", darkColor: "F53232FF", contrastLightColor: "FF7878FF", contrastDarkColor: "AB0000FF"),
//        .chartBad: HexColor(lightColor: "F83030FF", darkColor: "F53232FF", contrastLightColor: "FF7878FF", contrastDarkColor: "AB0000FF"),
//        .chartCritical: HexColor(lightColor: "DD6100FF", darkColor: "E26300FF", contrastLightColor: "FFAB1DFF", contrastDarkColor: "5C5C00FF"),
//        .chartGood: HexColor(lightColor: "30914CFF", darkColor: "30914CFF", contrastLightColor: "99CC99FF", contrastDarkColor: "006362FF"),
//        .chartNeutral: HexColor(lightColor: "6F89A1FF", darkColor: "758CA4FF", contrastLightColor: "AFAFAFFF", contrastDarkColor: "525252FF"),
        /// Map Colors
        .map1: HexColor(lightColor: "2E4A62", darkColor: "2E4A62"),
        .map2: HexColor(lightColor: "56840E", darkColor: "56840E"),
        .map3: HexColor(lightColor: "A63788", darkColor: "A63788"),
        .map4: HexColor(lightColor: "0079C6", darkColor: "0079C6"),
        .map5: HexColor(lightColor: "6B4EA0", darkColor: "6B4EA0"),
        .map6: HexColor(lightColor: "A16B00", darkColor: "A16B00"),
        .map7: HexColor(lightColor: "0B6295", darkColor: "0B6295"),
        .map8: HexColor(lightColor: "D0R774", darkColor: "D0R774"),
        .map9: HexColor(lightColor: "1C857A", darkColor: "1C857A"),
        .map10: HexColor(lightColor: "C45300", darkColor: "C45300"),
        .customColor1: HexColor(lightColor: "475E75FF", darkColor: "8396A8FF", contrastLightColor: "344556FF", contrastDarkColor: "8799ABFF"),
        .customColor2: HexColor(lightColor: "0057D2FF", darkColor: "1B90FFFF", contrastLightColor: "0046A8FF", contrastDarkColor: "2E99FFFF"),
        .customColor3: HexColor(lightColor: "046C7AFF", darkColor: "04ACA7FF", contrastLightColor: "03535EFF", contrastDarkColor: "04ACA7FF"),
        .customColor4: HexColor(lightColor: "256F3AFF", darkColor: "36A41DFF", contrastLightColor: "1B502AFF", contrastDarkColor: "39AD1FFF"),
        .customColor5: HexColor(lightColor: "A93E00FF", darkColor: "F58B00FF", contrastLightColor: "7A2D00FF", contrastDarkColor: "F58B00FF"),
        .customColor6: HexColor(lightColor: "D20A0AFF", darkColor: "D20A0AFF", contrastLightColor: "B40909FF", contrastDarkColor: "B40909FF"),
        .esriEdit: HexColor(lightColor: "FFF114", darkColor: "1B6DD2"),
        .jouleBrand: HexColor(lightColor: "714FFFFF", darkColor: "5D36FFFF", contrastLightColor: "5633E1FF", contrastDarkColor: "5238D6FF"),
        .jouleAccent1: HexColor(lightColor: "D522BFFF", darkColor: "A100C2FF", contrastLightColor: "FF70EDFF", contrastDarkColor: "9505B3FF"),
        .jouleAccent2: HexColor(lightColor: "7458FFFF", darkColor: "7458FFFF", contrastLightColor: "5133E6FF", contrastDarkColor: "5133E6FF"),
        .jouleAccent3: HexColor(lightColor: "9D85FFFF", darkColor: "7458FFFF", contrastLightColor: "AD99FFFF", contrastDarkColor: "5633E1FF"),
        .jouleGradient1: HexColor(lightColor: "714FFFFF", darkColor: "5D36FFFF", contrastLightColor: "AD99FFFF", contrastDarkColor: "5633E1FF"),
        .jouleGradient2: HexColor(lightColor: "D522BFFF", darkColor: "A100C2FF", contrastLightColor: "FF70EDFF", contrastDarkColor: "9505B3FF")
    ]
    
    func hexColor(for colorStyle: ColorStyle) -> HexColor? {
        self.colorDefinitions[colorStyle]
    }
}
