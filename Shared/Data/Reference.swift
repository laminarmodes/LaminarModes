//
//  Reference.swift
//  LaminarModes
//
//  Created by Dessert Traille on 7/8/21.
//

import SwiftUI

// MARK: - This allows the projects, themes, and stories to be refrenced or modified.

class Reference: ObservableObject {
    
    @Environment(\.colorScheme) var colorScheme
    
    //var themeColor1: UIColor
    
    init() {
        //themeColor1 = UIColor.systemRed
        
        
        var currentProjectIndex = 0
        var currentThemeIndex = 0
        var currentStoryIndex = 0
        
        currentProjectIndex = 1
        currentThemeIndex = 0
        for _ in libraries[currentProjectIndex].books
        {
            //            projects[currentProjectIndex].themes[currentThemeIndex].color = Color(themeColors[currentThemeIndex])
            
            libraries[currentProjectIndex].books[currentThemeIndex].color = (colorScheme == .dark ? Colors().vDark[currentThemeIndex] : Colors().vLight[currentThemeIndex])
            
            //.opacity(0.3)
            
            currentStoryIndex = 0
            for _ in libraries[currentProjectIndex].books[currentThemeIndex].chapters
            {
                libraries[currentProjectIndex].books[currentThemeIndex].chapters[currentStoryIndex].color = (colorScheme == .dark ? Colors().vDark[currentThemeIndex] : Colors().vLight[currentThemeIndex])
                //.opacity(0.3)
                
                currentStoryIndex += 1
            }
            
            currentThemeIndex += 1
        }
        
        
        
        currentThemeIndex = 0
        
        currentProjectIndex = 0
        currentThemeIndex = 0
        for _ in libraries[currentProjectIndex].books
        {
            libraries[currentProjectIndex].books[currentThemeIndex].color = (colorScheme == .dark ? Colors().pLight[currentThemeIndex] : Colors().pDark[currentThemeIndex])
            //.opacity(0.3)
            
            currentStoryIndex = 0
            for _ in libraries[currentProjectIndex].books[currentThemeIndex].chapters
            {
                libraries[currentProjectIndex].books[currentThemeIndex].chapters[currentStoryIndex].color = (colorScheme == .dark ? Colors().pLight[currentThemeIndex] : Colors().pDark[currentThemeIndex])
                //.opacity(0.3)
                
                currentStoryIndex += 1
            }
            
            currentThemeIndex += 1
        }
        
        
        
    }
    
    /*
     Each NFT should have a name, image, ID, category, value, date created, description, creator.  In the description use colorful storytelling language with emotions
     */
    
    
    @Published var libraries = [
        Library(title: "Market 1", books: [
            Book(image: "fork.knife", name: "Blueberry", description: "Jujubes biscuit donut jelly cotton candy jujubes I love cake croissant. Croissant marshmallow sweet roll I love cake gummies oat cake. Carrot cake jelly beans I love jelly pie pastry. Cheesecake brownie gummi bears sweet roll jelly beans chocolate bar macaroon. Apple pie marshmallow cupcake I love jujubes candy canes. Fruitcake tart pastry chocolate cake jelly-o dessert chocolate cake brownie.", numberOfUsers: 5, numberOfStories: 22, color: Color(UIColor.systemGray2), chapters: [
                Chapter(
                    icon: "blueberry-7",
                    role: "Candy",
                    description: "Sweet roll pastry",
                    date: "",
                    priority: "",
                    details: "I love donut wafer sweet roll pastry sweet pastry gingerbread jelly-o. Apple pie croissant pudding liquorice cupcake. Tiramisu apple pie ice cream toffee liquorice. Sesame snaps cake tootsie roll jujubes marzipan. Chocolate cake sweet roll chupa chups macaroon jelly beans I love marshmallow. Jelly-o powder candy canes dragée caramels.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Dessert",
                    storyLocation: "65.72",
                    storyDate: "Nov 20, 2021",
                    storyTime: "#2GA34"),
                Chapter(
                    icon: "blueberry-6",
                    role: "Milk Shake",
                    description: "Jelly-o toffee ",
                    date: "",
                    priority: "",
                    details: "Jelly-o toffee tiramisu lemon drops tiramisu biscuit. Jelly cake bonbon croissant sugar plum gummies tootsie roll jelly. Candy I love shortbread I love topping. Cupcake topping pie jujubes cake I love bear claw. Apple pie cupcake caramels lollipop croissant. Jelly-o apple pie brownie I love tart. I love muffin chocolate oat cake soufflé. Pudding pudding marzipan carrot cake marzipan pudding apple pie. Marshmallow topping powder pie wafer gummi bears. Sweet tootsie roll oat cake powder dragée pie I love croissant cookie.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Dessert",
                    storyLocation: "34.83",
                    storyDate: "5 Oct 2020",
                    storyTime: "#154A7"),
                Chapter(
                    icon: "blueberry-5",
                    role: "Crushed Ice",
                    description: "Cotton candy donut",
                    date: "",
                    priority: "",
                    details: "Marshmallow cotton candy donut wafer I love tart shortbread gingerbread. Sweet I love liquorice cupcake icing caramels chupa chups I love. Chupa chups cheesecake oat cake jelly beans cake sugar plum. Pastry tootsie roll chocolate cake I love I love I love. Pastry cotton candy pudding topping sugar plum. Marshmallow chocolate cake shortbread brownie lemon drops jelly beans chupa chups candy canes.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Dessert",
                    storyLocation: "90.25",
                    storyDate: "5 Oct 2020",
                    storyTime: "#164A7")]),
            Book(
                   image: "fork.knife",
                   name: "Rasberry",
                   description: "Lollipop gummi bears cupcake macaroon croissant cookie halvah carrot cake I love. Cake pie toffee candy canes bear claw pie I love lollipop cake. Bonbon biscuit oat cake donut I love I love cake. Dragée sweet tiramisu chocolate bar croissant. Toffee bear claw caramels bear claw jujubes pudding muffin cake cake. Gummies pudding lollipop I love I love I love brownie I love danish. Toffee pudding soufflé muffin pie cake powder I love carrot cake. Chocolate candy jujubes bonbon tart. Donut apple pie chocolate cake chocolate marzipan. Jelly beans marzipan sugar plum shortbread caramels danish.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "rasberry-6",
                        role: "Milk Shake",
                        description: "Apple pie I love",
                        date: "",
                        priority: "",
                        details: "Jujubes soufflé apple pie I love brownie tart. Dragée cookie carrot cake tart ice cream I love cake sweet powder. Cheesecake shortbread I love carrot cake gingerbread halvah pudding candy. Liquorice cheesecake macaroon pastry pastry jujubes fruitcake. Macaroon marzipan apple pie dragée tootsie roll sweet. I love tootsie roll sesame snaps muffin jelly beans gummies sugar plum halvah cookie. Jelly beans bonbon jelly bonbon chocolate. Marshmallow muffin topping liquorice oat cake tiramisu brownie macaroon tiramisu. Croissant cupcake shortbread jujubes I love.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "61.48",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#1GD4D"),
                    Chapter(
                        icon: "rasberry-5",
                        role: "Crushed Ice",
                        description: "Shortbread candy canes",
                        date: "",
                        priority: "",
                        details: "Biscuit pastry shortbread candy canes halvah I love apple pie. I love ice cream marshmallow pudding lemon drops. Chocolate cake marzipan dessert pie fruitcake biscuit gingerbread bear claw. Croissant donut lollipop cookie gummies. I love chocolate bar cotton candy jelly-o I love pie carrot cake. Fruitcake jelly jelly-o fruitcake cheesecake cake I love cookie. Jelly-o sesame snaps oat cake I love powder soufflé. Brownie bonbon liquorice fruitcake I love.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "98.21",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#124AS"),
                    Chapter(
                        icon: "rasberry-4",
                        role: "Cookies",
                        description: "Candy canes halvah",
                        date: "",
                        priority: "",
                        details: "Lollipop bonbon topping I love candy canes halvah. Wafer carrot cake topping ice cream cake cake biscuit. Candy oat cake shortbread powder halvah cake cheesecake. Candy pastry bear claw wafer croissant. Tiramisu lollipop halvah shortbread sesame snaps macaroon tart. Ice cream chocolate cake I love fruitcake lollipop muffin. Cookie cupcake dragée jelly-o muffin macaroon candy canes. Ice cream marzipan sesame snaps donut cupcake lollipop chocolate cake toffee.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "26.68",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#48WA7"),
                    Chapter(
                        icon: "rasberry-3",
                        role: "Ice Lolly",
                        description: "Pie ice cream",
                        date: "",
                        priority: "",
                        details: "Macaroon pudding chupa chups pie ice cream. Ice cream I love sweet bear claw I love muffin chocolate cake sugar plum chocolate. Apple pie brownie cheesecake tootsie roll chocolate bar bonbon tootsie roll. Apple pie shortbread I love jujubes oat cake muffin tart. I love biscuit toffee pastry gingerbread I love jujubes marshmallow halvah. Liquorice I love shortbread wafer cupcake icing cake I love marzipan. Croissant chocolate chupa chups I love pie cupcake tiramisu carrot cake croissant. Sesame snaps gummies tiramisu caramels bear claw cotton candy tart shortbread pie. Bear claw sweet tart liquorice dessert gummi bears. Powder apple pie halvah cookie caramels.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "27.98",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#1242"),
                    Chapter(
                        icon: "rasberry-8",
                        role: "Cake",
                        description: "aliquet nibh praesent",
                        date: "",
                        priority: "",
                        details: "Chocolate carrot cake chupa chups pie danish caramels jelly beans I love jelly-o. Tiramisu chocolate bar jujubes lemon drops gingerbread. Jelly-o candy jelly brownie fruitcake cookie. Wafer marzipan cheesecake croissant candy dragée I love cookie. Caramels tootsie roll bear claw icing lemon drops tiramisu marshmallow wafer topping. Topping dessert carrot cake jelly beans croissant chupa chups croissant. Tiramisu cupcake cookie danish lemon drops jujubes shortbread pie gingerbread. Toffee macaroon oat cake tart macaroon candy canes bonbon.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "109.90",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#124A7"),
                    Chapter(
                        icon: "rasberry-2",
                        role: "Ice Cream",
                        description: "croissant danish cake",
                        date: "",
                        priority: "",
                        details: "Carrot cake pie cookie ice cream croissant danish cake. Candy marzipan donut cake pastry sweet roll. Sugar plum tart shortbread icing I love. Jelly cake jujubes shortbread dragée I love croissant. Jujubes cotton candy cotton candy bear claw I love chocolate bar. Jujubes pie I love tootsie roll gingerbread. Powder chocolate bar dessert gingerbread I love lemon drops cotton candy. Apple pie jelly-o carrot cake fruitcake sweet soufflé lemon drops shortbread pastry. Gingerbread carrot cake dragée soufflé I love cheesecake pie cake. Oat cake candy I love chupa chups muffin candy jelly sweet roll jelly-o.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "217.23",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#12MA7"),
                    Chapter(
                        icon: "rasberry-1",
                        role: "Sorbet",
                        description: "Soufflé gummi bears",
                        date: "",
                        priority: "",
                        details: "Jelly beans soufflé gummi bears jelly beans cake biscuit lollipop. Candy lollipop cotton candy macaroon sweet roll icing bear claw jelly-o. Sweet roll dessert cotton candy marzipan I love tootsie roll jelly sugar plum candy. Shortbread candy toffee apple pie tart tart sweet pudding. Chocolate cake gummies I love I love macaroon gummies sweet oat cake chocolate bar. Candy ice cream croissant caramels danish. Biscuit lemon drops candy canes tiramisu sweet. Candy fruitcake candy tart cake marshmallow tart caramels brownie. Donut jelly beans soufflé gingerbread jelly wafer.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "10.36",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#FH49S")]),
            Book(
                   image: "fork.knife",
                   name: "Plum",
                   description: "Pastry chocolate cake brownie carrot cake wafer gummi bears sesame snaps. Chocolate powder macaroon brownie chupa chups I love sweet roll jelly beans powder. Cheesecake cookie chocolate tiramisu bear claw toffee. Pudding lollipop icing chocolate cake oat cake fruitcake fruitcake cotton candy. Tootsie roll dragée cotton candy icing I love sugar plum carrot cake halvah fruitcake. Chupa chups cupcake icing dessert chupa chups I love fruitcake halvah pie. Brownie tart sweet sesame snaps carrot cake chocolate. Donut dragée marzipan marshmallow cupcake brownie I love pudding. Gummies chocolate cake danish carrot cake oat cake marshmallow icing caramels. Apple pie brownie soufflé marzipan chocolate soufflé marzipan.", numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 chapters: [
                    Chapter(
                        icon: "plum-1",
                        role: "Sorbet",
                        description: "Pastry icing sugar",
                        date: "",
                        priority: "",
                        details: "Dragée carrot cake jelly-o marshmallow I love dessert topping. Jujubes ice cream lemon drops I love chocolate cake. Icing apple pie biscuit gingerbread bear claw. Pastry icing sugar plum chocolate cake tart jelly beans. Gingerbread ice cream croissant halvah pudding. Muffin jujubes I love sesame snaps shortbread sweet roll. Pie chocolate I love soufflé tootsie roll tiramisu.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "46.23",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#02UJE"),
                    Chapter(
                        icon: "plum-8",
                        role: "Cake",
                        description: "Powder donut",
                        date: "",
                        priority: "",
                        details: "Tart gingerbread powder donut jujubes. Cheesecake chocolate cake cake cake dragée danish pastry. Jelly brownie I love icing oat cake candy canes gingerbread. Liquorice macaroon toffee chupa chups chocolate bar marshmallow icing chocolate cake. Sesame snaps fruitcake marshmallow donut dragée jujubes jujubes apple pie candy. Cake I love halvah jelly dessert macaroon dessert jelly. Danish jelly donut bonbon gummies chocolate bar topping biscuit. Cookie chupa chups marzipan wafer marshmallow I love sugar plum. Sesame snaps bonbon carrot cake dragée gummies.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "59.21",
                        storyDate: "Nov 20, 2021",
                        storyTime: "982HR"),
                    Chapter(
                        icon: "plum-4",
                        role: "Cookies",
                        description: "Sweet roll gummi",
                        date: "",
                        priority: "",
                        details: "Jelly sweet cake I love I love jelly-o soufflé sweet. Cake jelly sweet roll gummi bears gummi bears I love jelly. Sweet roll chocolate dessert I love lollipop sweet roll. Sesame snaps lemon drops I love cake chocolate. Danish fruitcake powder pudding muffin biscuit. Chocolate powder tart pudding oat cake dessert toffee. Bonbon chocolate chocolate gingerbread biscuit. Caramels jelly beans I love lollipop jujubes toffee. Jelly cake liquorice sweet ice cream.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "49.21",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#ZCA72"),
                    Chapter(
                        icon: "plum-5",
                        role: "Crushed Ice",
                        description: "Lemon drops",
                        date: "",
                        priority: "",
                        details: "Fruitcake lemon drops marshmallow cake tart sweet candy canes pudding. Tootsie roll biscuit chocolate toffee chocolate. Sweet roll cake soufflé donut muffin lemon drops cake candy. Cupcake icing sweet gummies jujubes. Marshmallow powder brownie fruitcake candy canes danish. Sugar plum muffin marzipan sweet chocolate bar. Jelly ice cream oat cake cheesecake cheesecake soufflé halvah I love. Jelly beans carrot cake cake icing dragée toffee. Gummi bears macaroon oat cake candy bonbon pie fruitcake biscuit dragée.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "92.34",
                        storyDate: "Nov 20, 2021",
                        storyTime: "259WD")]),
            Book(
                   image: "fork.knife",
                   name: "Dragon Fruit",
                   description: "Tart macaroon tootsie roll gingerbread apple pie danish marzipan I love lollipop. Cupcake wafer cookie wafer brownie. Toffee shortbread sweet pudding cookie carrot cake brownie caramels. Sweet donut cake sweet roll liquorice caramels dragée. Jelly-o pastry I love pie I love halvah. Chocolate bar I love muffin topping lemon drops.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 chapters: [
                    Chapter(
                        icon: "dragonfruit-8",
                        role: "Cake",
                        description: "Caramels chocolate",
                        date: "",
                        priority: "",
                        details: "Danish caramels chocolate bar chocolate cotton candy jelly-o pie topping fruitcake. Wafer tiramisu tiramisu cupcake macaroon pudding pudding. Tiramisu sweet roll ice cream dragée chocolate marzipan biscuit dragée jelly. Liquorice caramels wafer bear claw bonbon cookie. Jelly-o topping cake icing jelly. I love cake soufflé muffin bonbon. I love I love topping gummies sesame snaps I love I love. Jelly-o sweet roll candy canes candy canes pudding caramels. Icing marshmallow gingerbread caramels topping soufflé chocolate cake.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "37.29",
                        storyDate: "Nov 20, 2021",
                        storyTime: "093U2"),
                    Chapter(
                        icon: "dragonfruit-6",
                        role: "Milk Shake",
                        description: "Cupcake pudding",
                        date: "",
                        priority: "",
                        details: "Lemon drops cupcake pudding lemon drops cake oat cake. Danish tiramisu sesame snaps sugar plum wafer shortbread gummies. Halvah jelly-o topping liquorice sugar plum pudding. Marzipan I love chupa chups chocolate cake jelly beans pudding tiramisu chupa chups. Jujubes cake I love caramels dessert shortbread. Jujubes gummies macaroon chocolate cake sesame snaps gummi bears jelly-o I love. I love cheesecake danish bonbon marshmallow.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "83.12",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#SG12L"),
                    Chapter(
                        icon: "dragonfruit-4",
                        role: "Cookies",
                        description: "Shortbread cupcake",
                        date: "",
                        priority: "",
                        details: "Jelly beans bonbon shortbread cupcake shortbread sweet roll bonbon candy canes. Bonbon macaroon jelly-o I love cupcake. Chocolate fruitcake sweet pudding chocolate sesame snaps. Pastry powder dessert biscuit toffee dessert marzipan tootsie roll sweet. I love sweet I love brownie marzipan danish marzipan. Marshmallow macaroon pie lollipop lollipop sweet chocolate cake. Donut I love jelly powder chupa chups lollipop macaroon gummies. Gingerbread biscuit pie I love caramels sesame snaps marzipan sweet roll. Dessert I love jujubes danish I love I love sesame snaps dessert.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "58.45",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#L9OL2"),
                    Chapter(
                        icon: "dragonfruit-3",
                        role: "Ice Lolly",
                        description: "Gummies cake apple",
                        date: "",
                        priority: "",
                        details: "Croissant gummies cake apple pie chocolate bar cake. Chocolate fruitcake chocolate cake macaroon jelly beans. Gummies I love tiramisu tart gingerbread icing cotton candy I love cupcake. Lollipop I love jelly cupcake macaroon cake candy canes. Jelly beans dragée shortbread icing pudding. I love chocolate chupa chups tiramisu cake. Cake cake candy canes cookie wafer carrot cake jelly marshmallow.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "60.20",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#091LM"),
                    Chapter(
                        icon: "dragonfruit-2",
                        role: "Ice Cream",
                        description: "Powder cheesecake",
                        date: "",
                        priority: "",
                        details: "I love powder cheesecake cake cotton candy I love cake. Chocolate cake pudding I love muffin chupa chups fruitcake. Pudding caramels ice cream soufflé tart apple pie dessert chocolate cake marzipan. Candy sesame snaps tiramisu dessert bonbon muffin apple pie marshmallow. Halvah I love tart cake gingerbread I love. Muffin dessert brownie chocolate icing apple pie pudding croissant.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "38.10",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#2905N"),
                    Chapter(
                        icon: "dragonfruit-1",
                        role: "Sorbet",
                        description: "Halvah gummies",
                        date: "",
                        priority: "",
                        details: "Bear claw liquorice halvah gummies jelly-o soufflé halvah. Halvah I love jujubes chupa chups brownie fruitcake brownie. Dragée jelly-o cake I love bear claw croissant. Marzipan cake jelly-o biscuit jelly I love. Candy canes I love cake I love cake chupa chups jelly. Muffin pie oat cake dragée toffee toffee topping I love. Jelly caramels marshmallow cupcake cheesecake. Macaroon cotton candy tiramisu cupcake sweet jujubes. Cookie chocolate cake biscuit powder.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "80.21",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#0PL5D")]),
            Book(
                   image: "fork.knife",
                   name: "Strawberry",
                   description: "Toffee cotton candy biscuit chupa chups sweet roll tart marzipan I love I love. Brownie chocolate bar jujubes fruitcake cotton candy tiramisu oat cake chocolate bar. Brownie marshmallow I love liquorice gummies I love sweet bonbon sweet. Candy I love wafer tiramisu I love cheesecake brownie chocolate bar. Gummies caramels jujubes chocolate cake dragée powder sweet jelly brownie. Dessert oat cake cake pastry gingerbread gingerbread tiramisu I love. Gummi bears biscuit cotton candy cake sugar plum I love sugar plum apple pie marshmallow. I love carrot cake lemon drops icing chocolate bar I love muffin soufflé. Shortbread I love chocolate cake shortbread cotton candy halvah lollipop tootsie roll tart. Sweet roll chupa chups muffin icing pudding toffee I love pastry I love.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "strawberry-8",
                        role: "Cake",
                        description: "Sweet cupcake",
                        date: "",
                        priority: "",
                        details: "Chocolate sweet cupcake oat cake donut chocolate cake. Jelly beans sweet cotton candy sweet danish candy canes toffee. Tootsie roll biscuit I love carrot cake chupa chups shortbread I love icing. Halvah donut icing cheesecake cotton candy shortbread dragée brownie apple pie. Sugar plum tootsie roll oat cake danish chupa chups dragée. Macaroon soufflé marshmallow wafer gummies. Liquorice oat cake jelly topping I love. Cake biscuit chupa chups fruitcake gingerbread dessert. Shortbread cotton candy cake caramels muffin I love pastry lemon drops lemon drops. Muffin marzipan halvah icing cheesecake tart cupcake.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "39.21",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#BNSK7"),
                    Chapter(
                        icon: "strawberry-3",
                        role: "Ice Lolly",
                        description: "I love topping",
                        date: "",
                        priority: "",
                        details: "Cake I love pudding I love topping chupa chups topping cake. Sesame snaps carrot cake jelly ice cream muffin cheesecake candy chocolate bar. Gingerbread tootsie roll cake ice cream shortbread brownie. Pie gummi bears biscuit gummi bears apple pie cupcake. Soufflé dessert I love shortbread caramels marshmallow bonbon. Donut tiramisu I love I love cupcake candy canes jelly-o fruitcake.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "69.21",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#0PL2Y"),
                    Chapter(
                        icon: "strawberry-1",
                        role: "Sorbet",
                        description: "Cake pudding",
                        date: "",
                        priority: "",
                        details: "Cake pudding icing powder candy canes. Brownie lemon drops bear claw cake jelly. Biscuit tart I love macaroon candy apple pie dessert pie. Chupa chups I love marshmallow jelly-o jelly-o bear claw chupa chups I love. Muffin chocolate cake cookie brownie chocolate. Marzipan cake gingerbread lemon drops toffee bonbon caramels. Topping dessert jelly chocolate cake shortbread topping donut tiramisu jelly. Toffee sugar plum sweet roll I love candy canes macaroon bear claw croissant. Jelly-o tart macaroon sweet marshmallow I love. Marshmallow gummies macaroon I love sweet roll lemon drops croissant dessert tart.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "69.43",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#124A7"),
                    Chapter(
                        icon: "strawberry-2",
                        role: "Ice Cream",
                        description: "I love candy",
                        date: "",
                        priority: "",
                        details: "Cotton candy I love muffin I love candy candy marzipan I love. Fruitcake toffee shortbread bear claw cotton candy gummies liquorice. Bonbon lemon drops I love muffin marshmallow. Soufflé donut I love wafer bonbon tiramisu donut. Tootsie roll cake tiramisu sesame snaps lemon drops candy canes. I love candy canes jelly jelly beans muffin tart. Jelly-o soufflé bonbon I love I love oat cake powder dragée.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "87.31",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#67QLO"),
                    Chapter(
                        icon: "strawberry-4",
                        role: "Cookies",
                        description: "Candy bear claw",
                        date: "",
                        priority: "",
                        details: "Tiramisu shortbread I love candy bear claw. Cookie cotton candy cotton candy chocolate candy canes pie tart bonbon pie. Sweet chocolate cotton candy shortbread jujubes dessert dragée. I love marshmallow dragée toffee donut. Cookie chupa chups liquorice gingerbread I love carrot cake danish. Halvah cookie I love topping powder macaroon I love jelly-o chocolate cake. Donut chocolate lemon drops cookie sweet roll marshmallow. Jujubes wafer fruitcake croissant cookie sweet brownie topping gummies. Gummi bears toffee marshmallow muffin soufflé tart I love dessert chocolate bar.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "23.10",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#278DF")]),
            Book(
                   image: "fork.knife",
                   name: "Watermellon",
                   description: "Lollipop tiramisu chocolate I love wafer pudding wafer. Donut I love cookie oat cake caramels apple pie. Bear claw soufflé carrot cake caramels powder danish pie. I love dessert cake cheesecake biscuit soufflé pie I love. Danish pie croissant toffee dessert cake. Tiramisu dragée jelly I love I love sweet roll topping. Donut tootsie roll liquorice I love jelly topping sesame snaps candy.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 chapters: [
                    Chapter(
                        icon: "watermellon-1",
                        role: "Sorbet",
                        description: "I love cake",
                        date: "",
                        priority: "",
                        details: "Marzipan cookie jelly beans I love lollipop cake tart gingerbread I love. Lemon drops bear claw gummi bears chocolate cake shortbread dessert donut. Oat cake macaroon lemon drops macaroon macaroon. Tootsie roll gingerbread toffee candy carrot cake chocolate cake lemon drops oat cake. Lollipop biscuit I love I love cake pastry gummi bears cake. Cake jujubes caramels icing fruitcake.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "5.20",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#98IKM"),
                    Chapter(
                        icon: "watermellon-2",
                        role: "Ice Cream",
                        description: "Cupcake toffee",
                        date: "",
                        priority: "",
                        details: "Cupcake toffee halvah sesame snaps I love croissant danish I love danish. Powder lollipop jelly-o dessert bear claw chocolate cake gingerbread brownie chocolate cake. Donut marzipan tiramisu candy I love marshmallow candy apple pie. Lemon drops donut dragée cotton candy fruitcake candy canes dessert. Wafer jelly-o donut jelly tootsie roll pudding sugar plum bonbon donut. Sweet chocolate bar fruitcake biscuit gingerbread I love sugar plum chupa chups I love. I love topping chocolate cake donut brownie marshmallow sugar plum. Jelly-o donut sesame snaps ice cream halvah.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "59.27",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#980OL"),
                    Chapter(
                        icon: "watermellon-3",
                        role: "Ice Lolly",
                        description: "Cake bonbon",
                        date: "",
                        priority: "",
                        details: "Cheesecake chocolate bar danish chupa chups jujubes biscuit chocolate cake bonbon. Cake I love tootsie roll gingerbread macaroon. Pastry gummi bears croissant sesame snaps I love tootsie roll shortbread donut. I love dessert liquorice chocolate bar dessert ice cream jujubes. Powder I love bonbon danish ice cream. Marshmallow oat cake fruitcake dragée cake. Dessert tart lollipop marshmallow sesame snaps chupa chups. Muffin oat cake ice cream cotton candy marzipan cake halvah pie gummies. Marshmallow pastry chocolate I love sweet biscuit.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "92.56",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#901NH"),
                    Chapter(
                        icon: "watermellon-4",
                        role: "Cookies",
                        description: "I love gingerbread",
                        date: "",
                        priority: "",
                        details: "Gingerbread jelly beans ice cream I love gingerbread. Jujubes pie marshmallow chocolate cake tart. I love biscuit fruitcake tiramisu sesame snaps croissant. Tart gummi bears icing ice cream chocolate bar toffee sweet roll sesame snaps. Cotton candy marzipan carrot cake I love chocolate cake pastry jelly beans. Pie halvah danish marzipan lemon drops pudding I love sweet roll tiramisu. Croissant shortbread tart candy canes gummi bears jelly-o dragée. Cake toffee dragée cotton candy powder gummi bears marzipan soufflé caramels.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "72.03",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#98NHE"),
                    Chapter(
                        icon: "watermellon-5",
                        role: "Crushed Ice",
                        description: "Cookie toffee",
                        date: "",
                        priority: "",
                        details: "I love ice cream donut cake I love jelly beans I love. Cotton candy jujubes gummi bears dragée wafer bonbon pastry cupcake chocolate bar. Gummi bears danish marshmallow lollipop croissant sugar plum tiramisu cupcake dragée. Danish wafer gingerbread sweet danish. Caramels apple pie jelly apple pie tiramisu gummi bears I love topping. Jelly bonbon cake sesame snaps candy biscuit macaroon. Bonbon sweet biscuit fruitcake chocolate bar muffin. I love chocolate cake pudding biscuit liquorice jelly-o sweet chupa chups. Jelly beans marzipan I love cheesecake cookie toffee gingerbread icing jujubes. Apple pie powder jelly donut chocolate bar danish topping cookie.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "101.43",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#0LQVF"),
                    Chapter(
                        icon: "watermellon-6",
                        role: "Milk Shake",
                        description: "jelly topping",
                        date: "",
                        priority: "",
                        details: "Bear claw I love jelly topping jelly-o chocolate bar powder sweet fruitcake. Halvah sweet roll I love wafer topping cake danish I love cookie. I love tootsie roll jelly I love gingerbread cookie tootsie roll sweet. Jujubes I love cake lollipop brownie I love bonbon sweet. Danish chupa chups jujubes jelly oat cake jelly-o sugar plum I love tart. Ice cream biscuit I love muffin cookie I love. Liquorice I love I love jelly-o pudding sweet. Liquorice cake marshmallow tootsie roll chocolate chocolate bar cookie.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "39.01",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#MLIJ9"),
                    Chapter(
                        icon: "watermellon-7",
                        role: "Candy",
                        description: "Oat cake gummies",
                        date: "",
                        priority: "",
                        details: "Chocolate bar oat cake gummies I love pudding bonbon cotton candy. Tiramisu ice cream toffee gummi bears lemon drops chocolate cake gummi bears cheesecake I love. Pudding I love tiramisu jujubes sweet roll pudding. Pie sugar plum gummi bears tart shortbread. Sugar plum jelly-o jelly tart cake tootsie roll jujubes. Dragée bear claw I love sesame snaps halvah sweet. Oat cake brownie powder ice cream jelly-o cupcake brownie chocolate bar.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "12.20",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#482WY"),
                    Chapter(
                        icon: "watermellon-8",
                        role: "Cake",
                        description: "Pudding cake candy",
                        date: "",
                        priority: "",
                        details: "Pudding cake cotton candy powder pastry caramels. Chocolate cake tart shortbread marzipan chupa chups cheesecake dessert sweet roll tart. Chocolate cake soufflé tart gingerbread gummies I love candy. I love sugar plum wafer powder donut danish shortbread topping marzipan. Sweet roll sweet cookie cake chocolate carrot cake tiramisu pie. Chocolate cupcake sugar plum halvah pastry. Tiramisu I love icing cake fruitcake tart sweet fruitcake brownie. Jujubes sugar plum ice cream cookie chocolate cake oat cake sugar plum tart caramels.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "72.80",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#MOLP0")]),
            Book(
                   image: "fork.knife",
                   name: "Orange",
                   description: "Chocolate croissant chocolate cake croissant biscuit I love soufflé tart. Sweet roll I love brownie cheesecake apple pie jujubes apple pie pastry I love. Bonbon carrot cake sweet jelly beans carrot cake danish pudding. Cake jelly-o jelly beans halvah chocolate bar I love biscuit. Dessert danish apple pie tart pastry pastry tootsie roll cake jelly-o. Jelly-o cupcake shortbread muffin donut wafer soufflé. Cake chocolate cake I love cotton candy sugar plum donut gummi bears oat cake. Sesame snaps jelly-o shortbread sesame snaps halvah.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 chapters: [
                    Chapter(
                        icon: "orange-1",
                        role: "Sorbet",
                        description: "The best snack",
                        date: "",
                        priority: "",
                        details: "Icing pudding tootsie roll I love muffin fruitcake chocolate cake I love. Sweet roll wafer chocolate cake macaroon tart I love muffin liquorice. Chupa chups wafer donut macaroon carrot cake danish oat cake. Biscuit cupcake lemon drops tiramisu chocolate cake. Powder wafer lemon drops candy jujubes candy canes cupcake. Gummi bears chupa chups pie bonbon shortbread. Fruitcake gummi bears topping I love cupcake chupa chups I love topping. Liquorice macaroon pastry cake chupa chups. Caramels biscuit sesame snaps croissant jelly beans candy canes fruitcake gummi bears.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "12.97",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#5T71W7"),
                    Chapter(
                        icon: "orange-2",
                        role: "Ice Cream",
                        description: "Pastry donut cake",
                        date: "",
                        priority: "",
                        details: "Lemon drops pastry donut cake sweet roll I love marzipan. Sesame snaps dessert tootsie roll icing macaroon. Candy cake apple pie I love I love candy canes. Muffin brownie I love I love pastry. Chupa chups fruitcake cotton candy oat cake caramels cheesecake icing sesame snaps pudding. Dragée danish macaroon lemon drops candy canes. Gingerbread chocolate candy canes I love liquorice wafer powder I love.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "83.06",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#1ET98"),
                    Chapter(
                        icon: "orange-3",
                        role: "Ice Lolly",
                        description: "Croissant cotton candy",
                        date: "",
                        priority: "",
                        details: "Sweet roll carrot cake ice cream croissant cotton candy soufflé. Bonbon dragée halvah shortbread I love fruitcake ice cream croissant. Shortbread marshmallow fruitcake I love sweet. Lollipop liquorice gummi bears cake brownie cookie candy canes dessert. Sesame snaps tiramisu jelly bonbon carrot cake lollipop wafer. Macaroon toffee tart carrot cake caramels. Donut cotton candy lollipop sweet apple pie brownie sugar plum chocolate cake pastry. Danish fruitcake gingerbread gummi bears chocolate cake croissant topping jelly-o pie.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "40.12",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#1GD34")]),
            Book(
                   image: "fork.knife",
                   name: "Lemon",
                   description: "Cheesecake chocolate bar bear claw pudding cupcake I love apple pie I love. Ice cream cheesecake jelly fruitcake croissant dragée halvah. Halvah cheesecake lemon drops caramels danish I love. Muffin cookie tart dragée chocolate oat cake pastry tootsie roll I love. Halvah cookie macaroon tiramisu jelly beans lemon drops cake tart macaroon. Lemon drops chupa chups pastry marshmallow candy canes I love cotton candy jelly-o cake. Tart muffin ice cream oat cake bear claw marzipan. Marzipan I love lollipop danish caramels brownie. Chocolate bar I love oat cake cookie powder dragée sweet wafer I love.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "lemon-5",
                        role: "Crushed Ice",
                        description: "Dragon Fruit",
                        date: "",
                        priority: "",
                        details: "Danish shortbread dessert tiramisu liquorice chocolate I love. Cake toffee candy cake gummi bears oat cake carrot cake. Brownie pastry I love donut carrot cake lemon drops. Gummi bears lollipop sweet shortbread sweet lemon drops powder gummi bears. Bonbon caramels pudding topping apple pie I love icing. Dragée wafer halvah biscuit I love croissant sugar plum cake marzipan. I love I love caramels cake cupcake gummi bears I love marshmallow bonbon. Jujubes lollipop cake I love pie muffin.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "85.29",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#12A7T"),
                    Chapter(
                        icon: "lemon-4",
                        role: "Cookies",
                        description: "Just loads of sugar",
                        date: "",
                        priority: "",
                        details: "I love oat cake bear claw danish I love wafer donut marzipan tiramisu. I love wafer brownie tart soufflé. Pie shortbread danish jujubes sugar plum I love marshmallow chupa chups. Cookie I love chocolate bar shortbread dessert biscuit soufflé. Croissant cotton candy dragée I love gummies chocolate. Croissant wafer gingerbread I love tiramisu candy canes sweet roll. Cupcake lemon drops gummies soufflé cake halvah topping pastry halvah. I love pudding dragée muffin tootsie roll caramels.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "49.21",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#134RF"),
                    Chapter(
                        icon: "lemon-3",
                        role: "Ice Lolly",
                        description: "Blueberry",
                        date: "",
                        priority: "",
                        details: "Cake wafer I love dragée I love. Oat cake danish caramels brownie toffee sesame snaps. I love shortbread I love cotton candy cake pudding. Gingerbread bear claw cotton candy chocolate dragée soufflé. Marzipan marzipan ice cream muffin danish gingerbread. Cake soufflé I love fruitcake jelly beans I love macaroon.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "96.34",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#1ET67"),
                    Chapter(
                        icon: "lemon-2",
                        role: "Ice Cream",
                        description: "Strawberry and blueberry",
                        date: "",
                        priority: "",
                        details: "Cookie chocolate bar cupcake jelly beans lollipop oat cake liquorice. Ice cream I love dragée jelly jelly beans lollipop jujubes halvah I love. Gummies sesame snaps I love I love biscuit pastry fruitcake tart bear claw. Sweet roll powder pastry candy oat cake brownie I love. Caramels jelly chocolate cake candy canes candy canes wafer liquorice. Shortbread I love sweet roll fruitcake powder. Oat cake toffee brownie pie sugar plum gummi bears toffee sweet roll. Gingerbread I love I love donut chocolate bar. Sweet roll wafer liquorice gummi bears cake oat cake tart.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "75.24",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#4A73H"),
                    Chapter(
                        icon: "lemon-1",
                        role: "Sorbet",
                        description: "Strawberry, orange and cherry",
                        date: "",
                        priority: "",
                        details: "Gingerbread lemon drops tootsie roll gummies I love cookie biscuit jelly chupa chups. Marshmallow lemon drops pie donut pudding carrot cake fruitcake sweet roll. Lemon drops sweet roll bear claw marzipan marshmallow cake liquorice shortbread bear claw. Bonbon I love gingerbread marshmallow soufflé. I love croissant tootsie roll soufflé fruitcake. Pie macaroon jelly beans I love I love. Jelly beans gummies donut caramels pie tart brownie.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "38.64",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#123M7")])]),
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        Library(title: "Market 2", books: [
            Book(image: "fork.knife", name: "Blackberry", description: "Jelly beans icing dessert ice cream jelly-o. Tart carrot cake jelly beans icing I love sugar plum chocolate bar wafer. Macaroon I love cotton candy chupa chups gummi bears oat cake danish gummi bears danish. Topping danish gingerbread sweet roll croissant biscuit topping topping lollipop. Danish fruitcake dragée fruitcake fruitcake. Jujubes muffin danish tootsie roll bear claw. I love pie pastry I love wafer.", numberOfUsers: 5, numberOfStories: 22, color: Color(UIColor.systemGray2), chapters: [
                Chapter(
                    icon: "blackberry-7",
                    role: "Candy",
                    description: "Sweet cupcake",
                    date: "",
                    priority: "",
                    details: "Marzipan oat cake danish marshmallow tiramisu lemon drops jelly-o tootsie roll. Liquorice pastry I love gingerbread gingerbread topping. Sweet cupcake I love ice cream pudding. Donut croissant I love cupcake topping I love chocolate bar. Jelly-o cake donut dessert I love brownie I love. Ice cream cake cake I love gummi bears. Toffee toffee lollipop gingerbread fruitcake lemon drops jelly pastry chocolate cake.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Dessert",
                    storyLocation: "39.48",
                    storyDate: "Nov 20, 2021",
                    storyTime: "#U19OW"),
                Chapter(
                    icon: "blackberry-3",
                    role: "Ice Lolly",
                    description: "Jujubes sweet roll",
                    date: "",
                    priority: "",
                    details: "Jujubes sweet roll croissant ice cream I love dessert. Cookie cupcake tootsie roll toffee biscuit sugar plum jelly lollipop. Biscuit sweet roll jelly beans pastry pudding. Jelly bear claw I love sweet sugar plum chocolate. Lollipop carrot cake jelly beans soufflé fruitcake shortbread gummies gummi bears danish. Chupa chups lollipop pie jelly-o I love bonbon fruitcake. Macaroon biscuit donut cotton candy tart halvah I love. Tootsie roll muffin I love pudding gingerbread muffin shortbread. Danish muffin chocolate cake cake macaroon. Chocolate bar bear claw tart croissant sweet.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Dessert",
                    storyLocation: "34.98",
                    storyDate: "5 Oct 2020",
                    storyTime: "#6NGHW"),
                Chapter(
                    icon: "blackberry-5",
                    role: "Crushed Ice",
                    description: "Love macaroon icing",
                    date: "",
                    priority: "",
                    details: "Wafer croissant I love macaroon icing I love cupcake pudding bear claw. Candy pastry bonbon I love dessert muffin soufflé. Chupa chups brownie gummies cotton candy cookie bonbon I love chupa chups. Cake caramels tootsie roll I love sesame snaps bear claw. Bear claw I love candy canes apple pie lemon drops cupcake. Chupa chups fruitcake I love chocolate cake croissant topping cake lollipop dragée. Cheesecake topping lollipop toffee donut bonbon brownie candy canes.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Dessert",
                    storyLocation: "80.45",
                    storyDate: "5 Oct 2020",
                    storyTime: "#LO10Q"),
                Chapter(
                    icon: "blackberry-1",
                    role: "Sorbet",
                    description: "Donut lemon drops",
                    date: "",
                    priority: "",
                    details: "I love donut lemon drops topping muffin topping. Sugar plum I love halvah candy chupa chups sweet roll. Wafer dessert bear claw muffin I love macaroon. Tiramisu sesame snaps powder candy I love shortbread cupcake. Sweet roll oat cake I love I love shortbread. Jelly chupa chups danish I love I love sugar plum cheesecake. Wafer lollipop shortbread cookie toffee donut carrot cake chocolate bar.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Dessert",
                    storyLocation: "20.87",
                    storyDate: "Nov 20, 2021",
                    storyTime: "#I0L27"),
                Chapter(
                    icon: "blackberry-8",
                    role: "Cake",
                    description: "Pie chupa chups",
                    date: "",
                    priority: "",
                    details: "Liquorice caramels danish sweet cheesecake dragée. I love liquorice danish jujubes I love macaroon shortbread dragée. Cotton candy sugar plum sweet roll soufflé danish cake lemon drops I love lemon drops. Sugar plum lemon drops I love soufflé pastry sweet sweet roll sugar plum. Pie jujubes jelly-o I love cake. Pastry I love I love bonbon jujubes marzipan chupa chups. Tart I love bonbon I love I love. Candy canes candy canes caramels bear claw donut. Toffee marzipan pie chupa chups soufflé bear claw.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Dessert",
                    storyLocation: "30.56",
                    storyDate: "Nov 20, 2021",
                    storyTime: "#MLA09")]),
            Book(
                   image: "fork.knife",
                   name: "Lavendar",
                   description: "Sesame snaps sweet roll cheesecake halvah chocolate bar powder chocolate cake tootsie roll pie. Chocolate bar I love sweet roll halvah I love gummi bears. Gummies chocolate cheesecake danish bonbon. I love marzipan fruitcake jelly beans jelly beans ice cream sweet. I love oat cake tootsie roll I love cotton candy lemon drops I love. Gingerbread candy chocolate cake I love sweet brownie. Chupa chups cake gummies donut lemon drops dessert jelly beans marzipan I love. Powder icing I love marzipan carrot cake croissant ice cream jujubes. Cake biscuit croissant cake brownie gummi bears muffin.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "lavendar-5",
                        role: "Crushed Ice",
                        description: "Danish oat cake",
                        date: "",
                        priority: "",
                        details: "Brownie danish oat cake bear claw pie sweet dessert dragée tiramisu. Chocolate cake bonbon soufflé I love. Halvah marshmallow oat cake I love wafer bonbon apple pie. Pie topping lemon drops gummies tootsie roll biscuit apple pie. Gingerbread gummies chocolate bar I love gummi bears. Chocolate bar topping gummies tootsie roll jelly bear claw gummi bears dragée sweet. Sesame snaps sweet tart I love halvah. Croissant gummi bears jelly beans soufflé cotton candy. I love wafer muffin cake candy cookie pastry caramels cotton candy. Powder jelly-o powder oat cake cupcake tart cake.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "00.00",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#0OL1H"),
                    Chapter(
                        icon: "lavendar-4",
                        role: "Cookies",
                        description: "Pastry ice cream",
                        date: "",
                        priority: "",
                        details: "Jelly beans ice cream lemon drops pastry ice cream. Marzipan cotton candy caramels liquorice jujubes jelly beans. Halvah I love I love tart croissant I love shortbread tart. Oat cake pastry gingerbread soufflé oat cake marzipan sesame snaps jelly. Icing pie marshmallow macaroon marzipan. Sweet roll tiramisu gummies chupa chups tootsie roll chupa chups topping cake I love.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "83.11",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#NJK0O"),
                    Chapter(
                        icon: "lavendar-3",
                        role: "Ice Lolly",
                        description: "Soufflé shortbread cupcake",
                        date: "",
                        priority: "",
                        details: "Danish cupcake bonbon halvah jujubes sesame snaps I love. Muffin tootsie roll pudding dragée soufflé shortbread cupcake tart pie. Biscuit toffee sesame snaps biscuit pie chocolate bar. Brownie topping soufflé jelly-o jelly cookie. Cheesecake I love lollipop cookie marzipan. Brownie fruitcake I love macaroon oat cake liquorice. Carrot cake sweet apple pie jujubes wafer jelly beans. I love biscuit candy canes macaroon topping jelly beans lollipop sesame snaps candy canes.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "68.02",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#OL2WS"),
                    Chapter(
                        icon: "lavendar-2",
                        role: "Ice Cream",
                        description: "Jujubes cupcake topping",
                        date: "",
                        priority: "",
                        details: "Sesame snaps topping jujubes cupcake topping gummies pastry donut jujubes. Carrot cake toffee macaroon topping ice cream cotton candy I love halvah pie. Fruitcake bear claw gingerbread halvah shortbread chocolate. I love jelly-o apple pie I love carrot cake jelly carrot cake icing jujubes. I love chocolate muffin carrot cake chupa chups. Donut cookie cookie fruitcake cake. Bonbon halvah I love cake marshmallow I love lollipop lollipop. Pudding apple pie I love lollipop gingerbread candy biscuit.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "2.83",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#N0OL1"),
                    Chapter(
                        icon: "lavendar-1",
                        role: "Sorbet",
                        description: "Cupcake cheese cake",
                        date: "",
                        priority: "",
                        details: "Bonbon I love cupcake cheesecake chocolate cake sugar plum cupcake cupcake I love. Liquorice apple pie cheesecake chocolate cake gummies. Cupcake cheesecake caramels biscuit oat cake caramels jujubes sweet roll. Wafer cupcake sweet roll caramels I love jelly beans. I love I love I love candy canes donut halvah I love. Wafer oat cake pudding sugar plum sesame snaps chocolate. Cake I love sugar plum I love tiramisu. Tiramisu croissant gingerbread caramels chocolate cake.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "50.00",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#KPQ76")]),
            Book(
                   image: "fork.knife",
                   name: "Concord Grape",
                   description: "I love lollipop caramels chupa chups I love chocolate candy canes. Fruitcake apple pie chupa chups marshmallow lollipop jelly-o gingerbread. Marzipan candy I love jelly beans soufflé topping gummi bears brownie danish. Croissant I love oat cake wafer caramels pie toffee pudding. Sugar plum jelly-o sesame snaps toffee danish muffin. Jelly beans tiramisu pudding donut lollipop brownie.", numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 chapters: [
                    Chapter(
                        icon: "concordegrape-7",
                        role: "Candy",
                        description: "Pudding candy canes",
                        date: "",
                        priority: "",
                        details: "Pudding candy canes donut I love sweet muffin biscuit chupa chups. Oat cake jelly-o cupcake pie toffee toffee I love powder. Cake I love cake jujubes cotton candy. Cheesecake biscuit brownie dessert tootsie roll chocolate cake I love tootsie roll icing. Cake cotton candy sugar plum caramels jelly beans carrot cake. Macaroon shortbread fruitcake jelly-o sugar plum powder I love. Jelly-o jelly beans chocolate candy canes bonbon tart sweet roll cake chocolate. Candy lollipop gummi bears I love jelly candy canes. Shortbread I love toffee I love biscuit.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "00.00",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#MLP08"),
                    Chapter(
                        icon: "concordegrape-3",
                        role: "Ice Lolly",
                        description: "Chocolate lemon drops",
                        date: "",
                        priority: "",
                        details: "I love cheesecake marshmallow brownie soufflé. Tart soufflé brownie halvah croissant. Brownie tootsie roll toffee tart cupcake I love I love bear claw. Sweet topping candy I love sesame snaps jelly. Lemon drops tootsie roll tiramisu I love bonbon. Sweet roll chocolate bar I love liquorice I love candy pastry. Tart shortbread halvah gummies I love chocolate cake cookie.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "67.21",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#KP07Y"),
                    Chapter(
                        icon: "concordegrape-2",
                        role: "Ice Cream",
                        description: "donut ice cream bears",
                        date: "",
                        priority: "",
                        details: "Candy canes donut ice cream gummi bears ice cream danish sesame snaps powder icing. Pudding icing chocolate cake sugar plum tart dragée cake cookie. Gummi bears liquorice chupa chups pie chocolate bar muffin pudding danish tootsie roll. Lemon drops chupa chups candy lemon drops chocolate bar icing tiramisu. I love I love cookie cupcake I love I love. Candy canes sugar plum icing powder jujubes. Tootsie roll brownie cheesecake oat cake apple pie chocolate. Gummi bears I love tart caramels pudding donut croissant jelly beans candy canes. Gummi bears cotton candy caramels dragée tiramisu cookie jelly-o tart candy canes.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "90.32",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#KP0L1"),
                    Chapter(
                        icon: "concordegrape-1",
                        role: "Sorbet",
                        description: "Wafer marzipan cupcake",
                        date: "",
                        priority: "",
                        details: "Ice cream pudding wafer marzipan cake. Jelly-o gummi bears wafer cupcake marshmallow ice cream I love gingerbread danish. Bonbon tootsie roll sweet roll sweet ice cream pastry. Marshmallow I love jelly lemon drops jelly gummies marzipan brownie chupa chups. Candy canes I love bear claw bear claw lollipop brownie carrot cake tootsie roll marshmallow. Muffin croissant tootsie roll toffee pastry apple pie pie. Dragée candy canes powder halvah marzipan donut. Shortbread gummies marzipan cheesecake carrot cake carrot cake apple pie. Cotton candy liquorice chocolate bar tiramisu bear claw cake.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "44.24",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#NJOL2"),
                    Chapter(
                        icon: "concordegrape-4",
                        role: "Cookies",
                        description: "Jujubes toffee tootsie",
                        date: "",
                        priority: "",
                        details: "I love tiramisu jujubes toffee tootsie roll cupcake fruitcake jelly-o cheesecake. Sesame snaps I love pastry biscuit carrot cake macaroon. Bonbon chupa chups tiramisu tart wafer. I love apple pie topping gummi bears gingerbread. Candy canes chocolate bar cotton candy marshmallow apple pie. Gingerbread gingerbread muffin halvah marshmallow.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "102.56",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#XCQ21")]),
            Book(
                   image: "fork.knife",
                   name: "Elberberry",
                   description: "Sweet roll I love dragée pie I love I love. Lollipop I love muffin topping cheesecake. Oat cake chocolate tart dessert chocolate cake fruitcake cookie sugar plum. Bear claw jujubes pie cotton candy cupcake sweet biscuit. Cotton candy dessert I love jelly beans ice cream donut lollipop halvah brownie. I love shortbread gummies lollipop pastry I love lemon drops bonbon. Bonbon I love I love fruitcake pudding chupa chups macaroon tootsie roll. Marzipan ice cream gummies pudding pie sweet cookie toffee.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 chapters: [
                    Chapter(
                        icon: "elderberry-2",
                        role: "Ice Cream",
                        description: "Sugar plum bonbon",
                        date: "",
                        priority: "",
                        details: "Apple pie sugar plum bonbon jelly beans donut I love sweet roll. I love chocolate cake liquorice candy chocolate bar. Donut cookie ice cream sesame snaps biscuit topping lemon drops. Apple pie lollipop tiramisu I love chocolate cake I love liquorice sweet. Fruitcake jujubes cake ice cream oat cake croissant pie gummies. Donut bonbon biscuit tiramisu sweet roll chupa chups danish. Oat cake liquorice pastry cake jelly beans marshmallow cheesecake. I love brownie bear claw I love pie ice cream cupcake pie donut. Jelly lollipop gummies bonbon wafer I love.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "61.50",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#O09IK"),
                    Chapter(
                        icon: "elderberry-1",
                        role: "Sorbet",
                        description: "Sweet roll cake drop",
                        date: "",
                        priority: "",
                        details: "Lemon drops I love marshmallow I love carrot cake sweet roll. Topping halvah sweet roll cake shortbread pastry. Chocolate cake carrot cake pie croissant gingerbread halvah. Lemon drops chupa chups ice cream apple pie I love cotton candy sesame snaps shortbread. Cotton candy cake I love fruitcake pudding cotton candy dessert fruitcake. Gummi bears macaroon lollipop wafer tart jelly beans cake. I love tiramisu pie pie candy canes. Carrot cake chocolate bar gummi bears I love tootsie roll. Sweet roll chocolate cake tart I love sugar plum croissant liquorice sugar plum cotton candy.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "1.50",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#MLOPB"),
                    Chapter(
                        icon: "elderberry-6",
                        role: "Milk Shake",
                        description: "Bonbon chocolate bar",
                        date: "",
                        priority: "",
                        details: "Danish sweet roll bonbon chocolate bar oat cake sweet roll wafer. Tootsie roll pudding bonbon I love pudding jelly-o pie gummi bears. Halvah cheesecake cookie shortbread jelly-o I love liquorice. Cake jelly-o sweet roll sweet tiramisu. Chocolate cake marshmallow tart sweet shortbread halvah icing icing. Liquorice tiramisu I love cake topping I love gingerbread ice cream. I love soufflé cookie danish brownie. Danish halvah cookie wafer candy. Tootsie roll gingerbread cake ice cream I love oat cake danish sweet candy canes. Cheesecake cotton candy dragée apple pie marzipan I love gingerbread pastry croissant.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "27.30",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#BVA65"),
                    Chapter(
                        icon: "elderberry-7",
                        role: "Candy",
                        description: "Love lollipop candy",
                        date: "",
                        priority: "",
                        details: "Sesame snaps jelly I love lollipop candy canes tart soufflé topping gummi bears. Jelly dragée caramels biscuit pudding muffin pastry marshmallow. Muffin danish chupa chups liquorice toffee jelly beans. Icing chocolate cake tootsie roll cheesecake macaroon halvah. Pudding cake icing macaroon chocolate bar sweet roll. Lollipop candy canes cupcake wafer bear claw. I love sweet roll cake candy bear claw pie cookie.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "88.21",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#ML0L2"),
                    Chapter(
                        icon: "elderberry-8",
                        role: "Cake",
                        description: "Cotton candy jelly",
                        date: "",
                        priority: "",
                        details: "Cotton candy jelly beans cake biscuit tootsie roll cheesecake. Wafer I love dragée lollipop lemon drops. Danish liquorice dessert apple pie cake bear claw I love wafer cookie. Carrot cake I love cake halvah chocolate bar macaroon cupcake cookie carrot cake. Chupa chups carrot cake jelly-o sesame snaps cupcake bonbon powder jelly. Halvah sesame snaps candy canes brownie croissant donut. Toffee sesame snaps jelly muffin cake dragée.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "56.21",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#TAO98")]),
            Book(
                   image: "fork.knife",
                   name: "Mint",
                   description: "Muffin jelly toffee cheesecake shortbread muffin powder pudding. Jujubes sugar plum cotton candy topping gingerbread cake tart. Chupa chups I love tart fruitcake icing. Muffin gummies macaroon I love tart. Cookie I love apple pie jelly beans oat cake danish bonbon jujubes. Chocolate fruitcake chocolate cake halvah sweet cookie oat cake jelly. Sesame snaps I love carrot cake biscuit icing.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "mint-3",
                        role: "Ice Lolly",
                        description: "Powder powder gummies",
                        date: "",
                        priority: "",
                        details: "Powder powder gummies gummi bears I love danish pastry tootsie roll. Muffin marshmallow jelly oat cake bonbon soufflé danish chupa chups. Cookie dragée wafer marshmallow pastry soufflé. Marshmallow marshmallow bear claw danish chocolate cake cake jujubes dragée. Muffin cake biscuit cake cotton candy chocolate cake icing oat cake. Fruitcake brownie soufflé chocolate cake sweet. Bear claw shortbread topping apple pie chocolate bar. Topping topping sugar plum liquorice biscuit shortbread I love topping. Chocolate cake dragée shortbread jelly brownie.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "45.83",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#9LQBF"),
                    Chapter(
                        icon: "mint-1",
                        role: "Sorbet",
                        description: "Icing carrot cake",
                        date: "",
                        priority: "",
                        details: "Carrot cake wafer pastry marshmallow danish I love icing. Lemon drops brownie topping cheesecake I love soufflé toffee cheesecake wafer. Marshmallow I love chupa chups candy donut icing carrot cake chocolate cake. Ice cream sugar plum shortbread cotton candy gummies gingerbread liquorice pie. Fruitcake chocolate jelly caramels jelly beans biscuit chocolate. Cupcake tootsie roll pie marshmallow shortbread jelly beans cheesecake. Toffee topping marshmallow topping candy canes tootsie roll muffin. Cotton candy pie chocolate cake fruitcake sweet cheesecake jelly jelly.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "23.32",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#SL09O"),
                    Chapter(
                        icon: "mint-2",
                        role: "Ice Cream",
                        description: "bar toffee bonbon",
                        date: "",
                        priority: "",
                        details: "Chocolate bar toffee bonbon powder marzipan I love cake apple pie halvah. Shortbread candy canes pie pie I love brownie I love. Liquorice biscuit icing donut gummies toffee croissant cotton candy apple pie. Gingerbread cotton candy soufflé lollipop cotton candy fruitcake liquorice wafer. Chocolate bar apple pie pastry dessert I love macaroon lemon drops tiramisu liquorice. Cake fruitcake danish dessert croissant tiramisu. Sesame snaps chocolate cake marzipan ice cream halvah cupcake shortbread dessert. Soufflé toffee gingerbread powder chocolate cake I love pastry muffin. Chocolate bar sweet roll jujubes cake gingerbread cupcake dessert sesame snaps. Brownie I love sweet roll tart oat cake marzipan bonbon wafer.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "93.15",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#NZ3RF"),
                    Chapter(
                        icon: "mint-5",
                        role: "Crushed Ice",
                        description: "Cake lollipop pudding",
                        date: "",
                        priority: "",
                        details: "Marshmallow muffin lemon drops cupcake cake lollipop pudding sesame snaps. Lemon drops icing gummi bears cake tiramisu wafer candy. Toffee jelly tootsie roll I love powder jelly-o. Gummies shortbread pastry I love candy. Pastry I love ice cream bonbon fruitcake I love powder. Macaroon tart sweet roll sesame snaps lollipop. Gummies marshmallow pudding I love I love lollipop. Bonbon fruitcake ice cream jelly-o macaroon lemon drops wafer soufflé.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "28.98",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#P0OQS"),
                    Chapter(
                        icon: "mint-8",
                        role: "Cake",
                        description: "Jujubes chocolate bar",
                        date: "",
                        priority: "",
                        details: "Topping jujubes chocolate bar pudding bonbon caramels cake jujubes. Liquorice jelly-o jelly beans icing shortbread wafer dessert muffin gummi bears. Dragée topping gingerbread toffee pudding. Croissant halvah carrot cake pie pie macaroon. Donut carrot cake sesame snaps danish chocolate bar caramels. I love pudding halvah oat cake carrot cake tart tart. Gummies jelly-o ice cream carrot cake carrot cake chocolate bar tiramisu chocolate bar donut.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "77.21",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#L0ON7")]),
            Book(
                   image: "fork.knife",
                   name: "Apple",
                   description: "Chocolate I love chocolate wafer tart pudding danish gummi bears tootsie roll. Gummi bears cake topping toffee chocolate bar. I love cotton candy marshmallow danish jelly jelly beans pudding muffin. Jujubes gummies lemon drops I love candy fruitcake cheesecake sweet roll donut. Bear claw liquorice sweet roll cookie cheesecake sesame snaps carrot cake jujubes soufflé. Liquorice gingerbread danish topping ice cream. Marshmallow dessert chocolate I love gummies lemon drops I love. Danish cotton candy cake jelly-o sesame snaps topping donut chocolate dessert.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 chapters: [
                    Chapter(
                        icon: "apple-4",
                        role: "Cookies",
                        description: "Croissant macaroon",
                        date: "",
                        priority: "",
                        details: "Caramels danish croissant macaroon fruitcake. Marzipan I love chupa chups soufflé topping danish caramels I love. Sweet bear claw chocolate pudding lollipop cheesecake. Lemon drops wafer biscuit soufflé sweet roll icing cookie jelly-o jelly beans. Carrot cake candy canes I love croissant jelly I love. Donut wafer I love gingerbread bonbon croissant croissant. I love sugar plum biscuit jelly-o powder icing halvah.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "67.09",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#MK0FE"),
                    Chapter(
                        icon: "apple-3",
                        role: "Ice Lolly",
                        description: "Icing cheesecake biscuit",
                        date: "",
                        priority: "",
                        details: "Icing cheesecake biscuit I love cotton candy chocolate cake. Apple pie I love ice cream caramels pudding. Chocolate I love cookie sweet pastry sugar plum. Tootsie roll powder macaroon dessert oat cake cookie bonbon. Cupcake dessert jelly-o jujubes chocolate candy canes jelly-o. Halvah soufflé wafer tootsie roll fruitcake bonbon. Croissant tart pie I love dragée tart.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "20.34",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#A0P3H"),
                    Chapter(
                        icon: "apple-2",
                        role: "Ice Cream",
                        description: "Topping muffin carrot",
                        date: "",
                        priority: "",
                        details: "Halvah carrot cake cotton candy topping muffin carrot cake bonbon. Tart halvah jujubes I love caramels brownie. Muffin pastry I love shortbread jelly pie sweet. Wafer liquorice dragée icing cookie pie toffee sesame snaps caramels. I love dessert tart lollipop carrot cake cake. Tiramisu I love carrot cake cheesecake chocolate gummi bears tart powder.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "97.14",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#H0PRD"),
                    Chapter(
                        icon: "apple-8",
                        role: "Cake",
                        description: "Ice cream cookie",
                        date: "",
                        priority: "",
                        details: "Marzipan jelly-o gummies I love soufflé ice cream I love marzipan cake. Tiramisu sesame snaps wafer pastry topping. I love soufflé sweet I love topping powder. Shortbread I love donut dessert chocolate cake I love dessert. Gummies I love cake gummi bears I love pie wafer I love. Gummi bears oat cake pastry cake fruitcake jelly beans. Gummies cookie pudding cake pudding. Wafer caramels I love pastry apple pie cookie. Donut lollipop ice cream cookie soufflé gingerbread marzipan pudding cake.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "95.58",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#MLO4F"),
                    Chapter(
                        icon: "apple-1",
                        role: "Sorbet",
                        description: "An ice cream cake",
                        date: "",
                        priority: "",
                        details: "Apple pie ice cream cake I love sweet jelly. Chocolate cake ice cream I love I love macaroon marshmallow cupcake muffin tart. Dragée candy canes I love pie tart chocolate bar dessert. Bear claw gummies marzipan pastry cheesecake. Candy canes I love bear claw dragée chocolate candy soufflé. Tiramisu fruitcake gingerbread biscuit halvah cookie I love croissant bonbon. I love pie cheesecake chupa chups shortbread jelly beans pie. Soufflé marshmallow shortbread candy canes soufflé bear claw topping. I love tootsie roll I love halvah pastry toffee dessert. I love gingerbread lollipop biscuit cotton candy sweet.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Dessert",
                        storyLocation: "40.10",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#MNO09")]),
            Book(
                   image: "fork.knife",
                   name: "Lime",
                   description: "Liquorice I love croissant muffin lollipop. Chocolate gingerbread lemon drops jujubes caramels biscuit biscuit. Candy canes halvah halvah candy jelly-o cheesecake sugar plum. I love pie ice cream marshmallow marzipan I love marzipan jelly beans carrot cake. Oat cake sweet roll jelly-o candy canes chocolate bar gummi bears sesame snaps chocolate I love. Croissant macaroon brownie gingerbread soufflé bear claw topping. Biscuit brownie brownie sesame snaps I love muffin I love sweet roll. Sugar plum gummies cake chocolate brownie. Dragée I love wafer caramels pastry. Jelly beans cupcake cookie tart candy canes jelly beans I love cupcake I love.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 chapters: [
                    Chapter(
                        icon: "lime-7",
                        role: "Candy",
                        description: "Carrot cake liquorice",
                        date: "",
                        priority: "",
                        details: "Dragée cake carrot cake liquorice chocolate lemon drops cotton candy. Dessert lollipop toffee brownie donut powder. Sesame snaps liquorice donut tiramisu sweet roll cookie. Halvah I love jelly beans oat cake jelly-o lemon drops lemon drops jelly. Pudding sesame snaps liquorice muffin wafer oat cake I love cupcake. Gingerbread cupcake gummi bears powder pie pastry. Ice cream danish cheesecake wafer macaroon dessert. Macaroon topping I love chocolate bar tart ice cream danish.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "101.20",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#LFHHY"),
                    Chapter(
                        icon: "lime-8",
                        role: "Cake",
                        description: "Jelly beans topping",
                        date: "",
                        priority: "",
                        details: "Lemon drops chupa chups powder topping jelly beans chocolate bar donut. Macaroon jelly apple pie jelly beans liquorice lemon drops cake. Toffee sweet chocolate cake apple pie sweet roll. I love powder lemon drops danish sweet roll I love sugar plum ice cream. Chocolate cake marzipan powder cake sweet I love caramels toffee chupa chups. Cotton candy cupcake dessert chupa chups candy canes biscuit sesame snaps tart liquorice.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "40.16",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#L0IFG"),
                    Chapter(
                        icon: "lime-6",
                        role: "Milk Shake",
                        description: "Dragée sugar plum",
                        date: "",
                        priority: "",
                        details: "Icing toffee chocolate cake cupcake I love I love jelly-o. Dragée sugar plum icing dragée I love bonbon. Gingerbread pudding jelly beans pie apple pie topping sesame snaps. Carrot cake brownie pudding pie pie icing dessert. Marzipan donut sweet roll pudding candy marshmallow pudding. Tart liquorice cake lollipop biscuit gummies marzipan. Cotton candy liquorice lollipop jelly jujubes cupcake carrot cake brownie. Dessert sesame snaps carrot cake cheesecake I love sweet donut pastry. Brownie I love cake brownie brownie jelly lemon drops.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "89.10",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#NDH6U"),
                    Chapter(
                        icon: "lime-1",
                        role: "Sorbet",
                        description: "Pudding cookie pie",
                        date: "",
                        priority: "",
                        details: "Jujubes pudding cookie pie ice cream cotton candy. Tart bear claw candy canes tart soufflé. Carrot cake chocolate cake donut brownie soufflé carrot cake. Sesame snaps caramels pastry apple pie brownie I love tiramisu. Gingerbread apple pie cheesecake liquorice muffin powder macaroon topping liquorice. Lollipop chocolate cake bonbon tiramisu jelly dragée halvah tart I love. Jelly bear claw chupa chups muffin chocolate cake. Jelly-o apple pie marzipan chocolate cake fruitcake I love. Jelly-o gummies cake I love gingerbread jelly-o donut sweet roll danish. Halvah sweet pastry donut macaroon I love.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "40.17",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#PL95J"),
                    Chapter(
                        icon: "lime-4",
                        role: "Cookies",
                        description: "Caramels wafer chupa",
                        date: "",
                        priority: "",
                        details: "Pastry caramels wafer chupa chups fruitcake gummi bears fruitcake. I love apple pie croissant tootsie roll croissant candy canes wafer chocolate cheesecake. I love macaroon I love chupa chups candy wafer. Cake jelly beans bear claw I love pie cake. Topping I love brownie halvah apple pie halvah. Jelly-o bonbon donut icing bear claw chocolate icing bonbon caramels. Ice cream I love chocolate gummi bears pie. Caramels muffin I love ice cream I love bear claw jelly-o cotton candy sweet.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "33.30",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#MLVZU"),
                    Chapter(
                        icon: "lime-2",
                        role: "Ice Cream",
                        description: "I love my shortbread",
                        date: "",
                        priority: "",
                        details: "I love shortbread donut gingerbread I love topping cotton candy lemon drops muffin. Topping candy icing icing pastry topping. Pie dessert tootsie roll brownie lemon drops gummi bears gingerbread bonbon candy canes. I love shortbread tiramisu tart croissant carrot cake cotton candy ice cream I love. Donut shortbread jelly I love macaroon dessert gummi bears sesame snaps sesame snaps. Croissant chocolate caramels sweet roll I love chocolate I love.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Dessert",
                        storyLocation: "29.00",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#09YJ")]),
            Book(
                   image: "fork.knife",
                   name: "Avocado",
                   description: "Candy pastry candy canes bonbon pudding I love I love sweet. Jelly jelly-o chocolate apple pie pastry sesame snaps donut sweet. Croissant bear claw gingerbread marshmallow cupcake gingerbread. I love candy oat cake lemon drops fruitcake. Sugar plum candy jujubes halvah shortbread I love. Bonbon tootsie roll lollipop soufflé marshmallow. Lollipop chocolate bar croissant jelly jelly-o chocolate tiramisu jelly. Oat cake dragée gummi bears macaroon tootsie roll chupa chups cheesecake. Lollipop marshmallow gingerbread tart I love biscuit.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "avocado-4",
                        role: "Cookies",
                        description: "Carrot cake dragée",
                        date: "",
                        priority: "",
                        details: "Brownie carrot cake dragée ice cream cookie chocolate bar. Wafer candy canes candy bear claw gummies gingerbread fruitcake jelly beans danish. Toffee bonbon marshmallow tootsie roll shortbread jelly ice cream. Shortbread jelly beans cake cookie jelly-o chupa chups carrot cake. Tart carrot cake cotton candy I love cake. Jujubes pudding tiramisu tart sugar plum macaroon sugar plum. I love lemon drops gummi bears carrot cake shortbread marshmallow lemon drops tart chocolate cake.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "89.25",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#MJ987"),
                    Chapter(
                        icon: "avocado-5",
                        role: "Crushed Ice",
                        description: "Lemon rainbow flavor",
                        date: "",
                        priority: "",
                        details: "Pie jelly beans halvah cookie powder marshmallow candy I love. Chupa chups I love I love donut chocolate. Oat cake candy canes icing croissant cupcake. Brownie pastry cheesecake tootsie roll bonbon shortbread croissant cheesecake. Halvah cupcake croissant pudding lemon drops croissant cupcake fruitcake wafer. Fruitcake lollipop macaroon tart chocolate bar chocolate bar toffee oat cake. Chocolate bar marshmallow tootsie roll sugar plum apple pie. Topping macaroon apple pie icing cotton candy tart carrot cake cotton candy.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "67.09",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#LFD83"),
                    Chapter(
                        icon: "avocado-6",
                        role: "Milk Shake",
                        description: "Bar brownie cupcake",
                        date: "",
                        priority: "",
                        details: "Danish dragée jelly-o sugar plum chocolate bar brownie cupcake powder. Pastry I love soufflé cookie muffin icing. Jujubes dragée jelly beans cookie jelly I love. Candy jelly beans gummies cotton candy I love toffee lollipop. Tart marshmallow wafer muffin sweet cheesecake chocolate cake wafer chocolate cake. Croissant marzipan bear claw bear claw I love chocolate bar ice cream. Dessert sesame snaps sesame snaps cake lemon drops jelly-o bear claw icing. I love lemon drops sesame snaps cake gummi bears cake sugar plum.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "94.87",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#EGHMF"),
                    Chapter(
                        icon: "avocado-7",
                        role: "Candy",
                        description: "A tiramisu marzipan",
                        date: "",
                        priority: "",
                        details: "Halvah cookie I love topping candy canes I love candy. Sesame snaps cake I love tootsie roll apple pie. Donut candy canes dragée I love cupcake pudding candy sesame snaps. Chocolate cake shortbread tiramisu marzipan caramels caramels. Marzipan carrot cake pudding cake biscuit. Liquorice I love marshmallow cotton candy jelly liquorice I love. Jelly-o danish cotton candy candy canes sweet roll chocolate bar biscuit muffin gummi bears. Sweet cookie sweet roll tart tart. Pie macaroon jelly danish cake I love candy.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "48.92",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#M90WD"),
                    Chapter(
                        icon: "avocado-8",
                        role: "Cake",
                        description: "Jelly-o soufflé cookie",
                        date: "",
                        priority: "",
                        details: "Candy canes brownie jelly-o soufflé cookie. Brownie ice cream shortbread gummi bears sugar plum tootsie roll lollipop jujubes sweet roll. Carrot cake danish caramels gummi bears muffin lollipop tart. Sweet caramels brownie I love pastry lemon drops jelly beans toffee tootsie roll. Gummi bears sesame snaps topping I love candy canes cotton candy brownie powder. Sugar plum I love cotton candy gingerbread gummies I love toffee.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Dessert",
                        storyLocation: "87.66",
                        storyDate: "Nov 20, 2021",
                        storyTime: "#MLTGH")])])]
    
    var books: [Book] {
        
        var readIndex = 0
        var count = 0
        
        for library in libraries
        {
            if library.uniqueID == referenceProjectID
            {
                readIndex = count
            }
            
            count += 1
        }
        
        return libraries[readIndex].books
    }
    
    var chapters: [Chapter]
    {
        var readIndexLibraries = 0
        var countLibraries = 0
        
        for library in libraries
        {
            if library.uniqueID == referenceProjectID
            {
                readIndexLibraries = countLibraries
            }
            
            countLibraries += 1
        }
        
        var readIndexBooks = 0
        var countBooks = 0
        for book in libraries[readIndexLibraries].books {
            if book.uniqueID == referenceBookID {
                readIndexBooks = countBooks
            }
            
            countBooks += 1
        }
        
        return libraries[readIndexLibraries].books[readIndexBooks].chapters
    }
    
    
    var referenceProjectID = UUID()
    var referenceBookID = UUID()
    var referenceStoryID = UUID()
    
    func addBook(image: String, name: String, description: String, color: Color)
    {
        var readIndexLibraries = 0
        var countLibraries = 0
        
        for library in libraries
        {
            if library.uniqueID == referenceProjectID
            {
                readIndexLibraries = countLibraries
            }
            countLibraries += 1
        }
        let newBook = Book(image: image, name: name, description: description, numberOfUsers: 0, numberOfStories: 0, color: color, chapters: [])
        libraries[readIndexLibraries].books.append(newBook)

    }
    
    func findBookById(inputThemeId: UUID) -> Book
    {

        var readIndexLibraries = 0
        var countLibraries = 0
        
        for library in libraries
        {
            if library.uniqueID == referenceProjectID
            {
                readIndexLibraries = countLibraries
            }
            
            countLibraries += 1
        }
        
        var readIndexBooks = 0
        var countBooks = 0
        for book in libraries[readIndexLibraries].books {
//            if book.uniqueID == referenceBookID {
            if book.uniqueID == inputThemeId {
                readIndexBooks = countBooks
            }
            
            countBooks += 1
        }
        return libraries[readIndexLibraries].books[readIndexBooks]
    }
    
    func addChapter(image: String, role: String, description: String, date: String, priority: String, details: String, color: Color?)
    {
        
        var readIndexLibraries = 0
        var countLibraries = 0
        
        for library in libraries
        {
            if library.uniqueID == referenceProjectID
            {
                readIndexLibraries = countLibraries
            }
            countLibraries += 1
        }
        
        var readIndexBooks = 0
        var countBooks = 0
        for book in libraries[readIndexLibraries].books {
            if book.uniqueID == referenceBookID {
                readIndexBooks = countBooks
            }
            countBooks += 1
        }
        
        let bookCurrent = libraries[readIndexLibraries].books[readIndexBooks]
        let newChapter = Chapter(icon: image, role: role, description: description, date: date, priority: priority, details: details, color: bookCurrent.color)
        libraries[readIndexLibraries].books[readIndexBooks].chapters.append(newChapter)
        
    }
    
    func deleteChapter(storyIdToRemove: UUID)
    {
        var readIndexLibraries = 0
        var countLibraries = 0
        
        for library in libraries
        {
            if library.uniqueID == referenceProjectID
            {
                readIndexLibraries = countLibraries
            }
            countLibraries += 1
        }
        
        var readIndexBooks = 0
        var countBooks = 0
        for book in libraries[readIndexLibraries].books {
            if book.uniqueID == referenceBookID {
                readIndexBooks = countBooks
            }
            countBooks += 1
        }
        
        var readIndexChapters = 0
        var countChapters = 0
        for chapter in libraries[readIndexLibraries].books[readIndexBooks].chapters {
//            if chapter.uniqueID == referenceStoryID {
            if chapter.uniqueID == storyIdToRemove {
                readIndexChapters = countChapters
            }
            countChapters += 1
        }
        
        libraries[readIndexLibraries].books[readIndexBooks].chapters.remove(at: readIndexChapters)
        
    }
    
    //    func readStory(storyIdToRead: Int) -> iStory
    func findChapterById(storyIdToRead: UUID) -> Chapter
    {
        
        var readIndexLibraries = 0
        var countLibraries = 0
        
        for library in libraries
        {
            if library.uniqueID == referenceProjectID
            {
                readIndexLibraries = countLibraries
            }
            countLibraries += 1
        }
        
        var readIndexBooks = 0
        var countBooks = 0
        for book in libraries[readIndexLibraries].books {
            if book.uniqueID == referenceBookID {
                readIndexBooks = countBooks
            }
            countBooks += 1
        }
        
        var readIndexChapters = 0
        var countChapters = 0
        for chapter in libraries[readIndexLibraries].books[readIndexBooks].chapters {
//            if chapter.uniqueID == referenceStoryID {
            if chapter.uniqueID == storyIdToRead {
                readIndexChapters = countChapters
            }
            countChapters += 1
        }
        
        return libraries[readIndexLibraries].books[readIndexBooks].chapters[readIndexChapters]
   
    }
    
    
    func totalBooks(for project: Library) -> String {
        return "\(project.books.count) theme\(project.books.count == 1 ? "" : "s")"
    }
    
    func totalChapters(for theme: Book) -> String {
        //return "\(theme.stories.count) story\(theme.stories.count == 1 ? "" : "s")"
        return "\(theme.chapters.count)"
        //        return theme.stories.count
    }
    
    func totalChaptersInt(for theme: Book) -> Int {
        //return "\(theme.stories.count) story\(theme.stories.count == 1 ? "" : "s")"
        return theme.chapters.count
        //        return theme.stories.count
    }
}


