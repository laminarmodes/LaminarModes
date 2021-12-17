//
//  Reference.swift
//  LaminarModes
//
//  Created by Anya Traille on 7/8/21.
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
    
    
    @Published var libraries = [
        Library(title: "Book 1", books: [
            Book(image: "book.fill", name: "facilisis magna etiam", description: "Elit scelerisque mauris pellentesque pulvinar pellentesque habitant. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Molestie at elementum eu facilisis sed. Velit euismod in pellentesque massa. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae. Amet facilisis magna etiam tempor orci eu lobortis elementum nibh. Arcu dictum varius duis at consectetur lorem donec. Aenean pharetra magna ac placerat. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sed egestas egestas fringilla phasellus faucibus scelerisque eleifend. Vitae justo eget magna fermentum. Ut sem viverra aliquet eget. Orci nulla pellentesque dignissim enim sit amet venenatis urna. Libero nunc consequat interdum varius sit amet mattis vulputate enim. Suspendisse interdum consectetur libero id faucibus nisl. Tellus molestie nunc non blandit massa enim nec. Amet aliquam id diam maecenas ultricies. Praesent tristique magna sit amet purus gravida quis blandit turpis.", numberOfUsers: 5, numberOfStories: 22, color: Color(UIColor.systemGray2), chapters: [
                Chapter(
                    icon: "person.fill",
                    role: "Donec Ultrices",
                    description: "Diam vel quam",
                    date: "",
                    priority: "",
                    details: "Donec ultrices tincidunt arcu non sodales. A diam sollicitudin tempor id eu nisl nunc mi. Risus feugiat in ante metus dictum at tempor commodo. Diam vel quam elementum pulvinar etiam non quam lacus. Sit amet nisl purus in mollis. Eget mi proin sed libero enim sed faucibus turpis in. Egestas maecenas pharetra convallis posuere morbi. Feugiat vivamus at augue eget arcu. Aliquet nibh praesent tristique magna sit. Tellus id interdum velit laoreet id donec ultrices.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Charlene",
                    storyLocation: "Paris, France",
                    storyDate: "Nov 20, 2021",
                    storyTime: "10:00 AM"),
                Chapter(
                    icon: "person.fill",
                    role: "Nisl Tincidunt",
                    description: "nibh tortor id",
                    date: "",
                    priority: "",
                    details: "Nisl tincidunt eget nullam non nisi est sit amet facilisis. Nulla facilisi etiam dignissim diam quis enim lobortis scelerisque. Pellentesque id nibh tortor id. Ut porttitor leo a diam. Viverra adipiscing at in tellus integer feugiat scelerisque varius. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. At augue eget arcu dictum. Justo eget magna fermentum iaculis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida. Nullam vehicula ipsum a arcu cursus vitae. Ut consequat semper viverra nam libero justo. Volutpat ac tincidunt vitae semper quis lectus nulla. Consequat nisl vel pretium lectus quam. Sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula ipsum.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Anya",
                    storyLocation: "Training Center",
                    storyDate: "5 Oct 2020",
                    storyTime: "1100 SGT"),
                Chapter(
                    icon: "person.fill",
                    role: "Ligula Ullamcorper",
                    description: "Hendrerit gravida rutrum",
                    date: "",
                    priority: "",
                    details: "Fermentum et sollicitudin ac orci phasellus egestas tellus. Massa id neque aliquam vestibulum morbi blandit cursus risus at. Risus in hendrerit gravida rutrum. Ut pharetra sit amet aliquam id diam maecenas. At erat pellentesque adipiscing commodo elit at imperdiet. Ligula ullamcorper malesuada proin libero. Malesuada pellentesque elit eget gravida cum sociis natoque penatibus et. Mattis molestie a iaculis at erat pellentesque adipiscing commodo elit. Consectetur libero id faucibus nisl tincidunt eget. Ultrices vitae auctor eu augue ut lectus arcu bibendum.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Anya",
                    storyLocation: "A diam maecenas",
                    storyDate: "5 Oct 2020",
                    storyTime: "1100 SGT")]),
            Book(
                   image: "person.crop.circle.fill.badge.minus",
                   name: "Tristique sollicitudin",
                   description: "Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Sagittis eu volutpat odio facilisis mauris sit amet. Ultricies tristique nulla aliquet enim tortor at. Nunc pulvinar sapien et ligula ullamcorper. Aliquam faucibus purus in massa tempor nec. Adipiscing commodo elit at imperdiet dui accumsan. Luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor. Condimentum vitae sapien pellentesque habitant morbi tristique senectus et netus. A diam sollicitudin tempor id. A cras semper auctor neque. Dui vivamus arcu felis bibendum ut tristique et egestas. Fermentum iaculis eu non diam phasellus vestibulum. Et malesuada fames ac turpis. Vitae congue eu consequat ac felis donec et odio. Velit egestas dui id ornare arcu odio. Praesent tristique magna sit amet. A arcu cursus vitae congue mauris rhoncus aenean.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Condimentum Vitae",
                        description: "Pharetra diam",
                        date: "",
                        priority: "",
                        details: "Volutpat maecenas volutpat blandit aliquam. Velit dignissim sodales ut eu sem integer vitae justo eget. Convallis tellus id interdum velit laoreet. Sollicitudin nibh sit amet commodo. Tellus id interdum velit laoreet id donec ultrices tincidunt. Eros in cursus turpis massa. Nibh tortor id aliquet lectus proin nibh nisl. Odio ut sem nulla pharetra diam. Sed felis eget velit aliquet sagittis id consectetur purus ut. Fringilla est ullamcorper eget nulla. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Cursus turpis massa tincidunt dui ut ornare lectus sit amet. Scelerisque varius morbi enim nunc faucibus a pellentesque sit.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Euismod",
                        description: "Pharetra diam",
                        date: "",
                        priority: "",
                        details: "Sed turpis tincidunt id aliquet risus feugiat in ante. Id interdum velit laoreet id donec. Facilisis volutpat est velit egestas dui id ornare arcu. In hac habitasse platea dictumst. Consectetur adipiscing elit duis tristique sollicitudin nibh sit. Eu tincidunt tortor aliquam pharetra diam. Sed id semper risus in. At imperdiet dui accumsan sit amet nulla facilisi. Euismod lacinia at quis risus sed vulputate odio ut. Cursus mattis molestie a iaculis at erat.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Tincidunt Vitae",
                        description: "Turpis massa",
                        date: "",
                        priority: "",
                        details: "Sit amet commodo nulla facilisi nullam vehicula. Arcu risus quis varius quam quisque id diam vel. Tincidunt dui ut ornare lectus sit. Diam vulputate ut pharetra sit amet aliquam id diam maecenas. Tincidunt vitae semper quis lectus nulla at volutpat diam. Turpis massa sed elementum tempus egestas sed sed risus pretium. Pretium viverra suspendisse potenti nullam. Sit amet volutpat consequat mauris nunc congue nisi vitae. Arcu odio ut sem nulla pharetra diam. Hendrerit gravida rutrum quisque non tellus. Elementum integer enim neque volutpat ac tincidunt. Amet massa vitae tortor condimentum lacinia quis. Volutpat lacus laoreet non curabitur gravida arcu. Vitae ultricies leo integer malesuada. Quis hendrerit dolor magna eget est lorem ipsum dolor sit.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Tellus",
                        description: "Fermentum Posuere",
                        date: "",
                        priority: "",
                        details: "Fusce ut placerat orci nulla pellentesque dignissim enim. Lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque. Rhoncus dolor purus non enim. Tristique sollicitudin nibh sit amet. Posuere ac ut consequat semper viverra nam libero justo laoreet. Vel turpis nunc eget lorem dolor sed viverra. Nec feugiat in fermentum posuere urna nec. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Tellus in metus vulputate eu scelerisque felis imperdiet. Dignissim sodales ut eu sem integer vitae justo eget magna.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Ullamcorper Morbi",
                        description: "aliquet nibh praesent",
                        date: "",
                        priority: "",
                        details: "Integer eget aliquet nibh praesent tristique magna sit amet purus. Ornare massa eget egestas purus viverra accumsan in nisl. Accumsan in nisl nisi scelerisque eu ultrices vitae. Felis imperdiet proin fermentum leo vel orci porta non pulvinar. Magna fermentum iaculis eu non diam phasellus vestibulum. Integer eget aliquet nibh praesent tristique magna sit amet purus. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse. Euismod lacinia at quis risus sed. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan. Neque vitae tempus quam pellentesque nec nam. Cursus mattis molestie a iaculis. Eget sit amet tellus cras adipiscing.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Tempor Orci",
                        description: "A diam maecenas sed",
                        date: "",
                        priority: "",
                        details: "Commodo sed egestas egestas fringilla. Egestas integer eget aliquet nibh praesent tristique magna sit. Vitae congue eu consequat ac felis donec. Pulvinar mattis nunc sed blandit libero volutpat sed cras ornare. A diam maecenas sed enim. Faucibus nisl tincidunt eget nullam non. Gravida rutrum quisque non tellus orci ac. Etiam tempor orci eu lobortis elementum nibh. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper. Ornare arcu odio ut sem nulla. Facilisis magna etiam tempor orci eu lobortis. Consequat semper viverra nam libero justo. Eget velit aliquet sagittis id consectetur purus ut faucibus pulvinar. Fames ac turpis egestas maecenas pharetra convallis posuere. Mauris vitae ultricies leo integer malesuada nunc. Iaculis nunc sed augue lacus viverra vitae congue eu consequat. Sit amet consectetur adipiscing elit pellentesque habitant. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Ullamcorper eget nulla facilisi etiam dignissim diam. Gravida neque convallis a cras semper auctor neque.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Quam Pellentesque",
                        description: "Adipiscing commodo",
                        date: "",
                        priority: "",
                        details: "Massa massa ultricies mi quis. Enim facilisis gravida neque convallis a. Auctor neque vitae tempus quam pellentesque nec nam. Elit pellentesque habitant morbi tristique senectus et netus. In iaculis nunc sed augue lacus viverra vitae congue eu. Molestie a iaculis at erat pellentesque adipiscing commodo. Est ultricies integer quis auctor elit sed vulputate. Malesuada bibendum arcu vitae elementum curabitur vitae. Donec massa sapien faucibus et molestie. Quam pellentesque nec nam aliquam sem. Augue mauris augue neque gravida in fermentum. Dictum varius duis at consectetur lorem donec massa. Vulputate ut pharetra sit amet aliquam id diam maecenas. Vel pharetra vel turpis nunc eget lorem. Aenean vel elit scelerisque mauris pellentesque. Ut enim blandit volutpat maecenas. Dolor magna eget est lorem ipsum dolor. Erat pellentesque adipiscing commodo elit at imperdiet dui accumsan. Varius vel pharetra vel turpis nunc eget lorem. Nunc aliquet bibendum enim facilisis gravida neque convallis a.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "waveform.path.ecg",
                   name: "Quis commodo odio",
                   description: "Sagittis purus sit amet volutpat consequat mauris nunc. Morbi blandit cursus risus at ultrices mi tempus imperdiet nulla. Condimentum id venenatis a condimentum. In fermentum et sollicitudin ac orci phasellus egestas tellus rutrum. A diam maecenas sed enim ut sem viverra aliquet. Aliquam eleifend mi in nulla posuere. A diam sollicitudin tempor id eu nisl nunc mi ipsum. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Consequat ac felis donec et odio pellentesque diam volutpat commodo. Turpis in eu mi bibendum. In hac habitasse platea dictumst vestibulum. Sit amet porttitor eget dolor morbi non arcu risus. Neque volutpat ac tincidunt vitae semper quis lectus. Quis commodo odio aenean sed adipiscing. Pulvinar sapien et ligula ullamcorper malesuada proin libero. Diam in arcu cursus euismod quis viverra nibh. Dis parturient montes nascetur ridiculus mus. Vulputate dignissim suspendisse in est ante. Aliquam sem et tortor consequat id porta nibh.", numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Venenatis",
                        description: "Quisque non tellus",
                        date: "",
                        priority: "",
                        details: "Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Congue quisque egestas diam in arcu. Consequat id porta nibh venenatis cras sed. Ornare arcu dui vivamus arcu felis bibendum ut tristique. Habitant morbi tristique senectus et netus. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Hendrerit gravida rutrum quisque non tellus. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Ullamcorper sit amet risus nullam eget felis. Venenatis a condimentum vitae sapien. Morbi tincidunt ornare massa eget egestas purus viverra accumsan in.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Ipsum Faucibus",
                        description: "Nulla facilisi morbi",
                        date: "",
                        priority: "",
                        details: "Tempus egestas sed sed risus pretium quam vulputate dignissim. Ipsum faucibus vitae aliquet nec ullamcorper sit. Ut aliquam purus sit amet luctus. Egestas congue quisque egestas diam in arcu cursus. Venenatis a condimentum vitae sapien pellentesque habitant morbi tristique senectus. Dapibus ultrices in iaculis nunc sed augue. Sit amet nulla facilisi morbi tempus iaculis urna. Nam at lectus urna duis convallis convallis. Id ornare arcu odio ut. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Ac ut consequat semper viverra nam libero justo laoreet sit.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Bibendum Enim",
                        description: "Augue interdum velit",
                        date: "",
                        priority: "",
                        details: "At elementum eu facilisis sed. Egestas egestas fringilla phasellus faucibus scelerisque. In hendrerit gravida rutrum quisque non tellus orci ac. Fermentum odio eu feugiat pretium nibh. Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Arcu cursus vitae congue mauris rhoncus aenean vel elit. Vitae congue eu consequat ac felis donec et odio. Porttitor massa id neque aliquam vestibulum morbi. Risus nullam eget felis eget nunc. Consequat nisl vel pretium lectus quam id leo in. Senectus et netus et malesuada. Bibendum enim facilisis gravida neque convallis a cras. At imperdiet dui accumsan sit amet nulla. Gravida dictum fusce ut placerat. Tincidunt augue interdum velit euismod in pellentesque massa placerat duis.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Egestas Fringilla",
                        description: "Velit sed ullamcorper",
                        date: "",
                        priority: "",
                        details: "Dolor sit amet consectetur adipiscing elit ut aliquam. Et pharetra pharetra massa massa ultricies mi. Velit euismod in pellentesque massa placerat duis ultricies. Pharetra vel turpis nunc eget. Fusce id velit ut tortor pretium viverra suspendisse. Aliquam sem fringilla ut morbi. Sed euismod nisi porta lorem mollis. Egestas fringilla phasellus faucibus scelerisque eleifend. In ante metus dictum at tempor commodo. Mi sit amet mauris commodo quis imperdiet massa tincidunt nunc. Urna cursus eget nunc scelerisque viverra. Egestas fringilla phasellus faucibus scelerisque eleifend donec. Facilisi etiam dignissim diam quis enim. Mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Et tortor at risus viverra. Semper viverra nam libero justo laoreet. Nisl suscipit adipiscing bibendum est ultricies. Erat pellentesque adipiscing commodo elit at imperdiet. Ut tristique et egestas quis ipsum suspendisse ultrices gravida dictum. Ac ut consequat semper viverra nam.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "globe",
                   name: "Nec Sagittis",
                   description: "Viverra orci sagittis eu volutpat odio facilisis mauris. Nunc sed id semper risus. In hac habitasse platea dictumst. Sapien nec sagittis aliquam malesuada bibendum arcu vitae. Congue nisi vitae suscipit tellus mauris. Gravida rutrum quisque non tellus orci ac. Integer quis auctor elit sed vulputate mi sit. Gravida in fermentum et sollicitudin ac orci. Diam maecenas ultricies mi eget mauris pharetra. Nec sagittis aliquam malesuada bibendum. Amet purus gravida quis blandit turpis. Risus ultricies tristique nulla aliquet enim tortor at. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam eget. Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Pretium Viverra",
                        description: "libero id faucibus",
                        date: "",
                        priority: "",
                        details: "Eget est lorem ipsum dolor. Mauris ultrices eros in cursus turpis massa tincidunt. Pretium quam vulputate dignissim suspendisse in est ante in nibh. A condimentum vitae sapien pellentesque habitant morbi. Turpis in eu mi bibendum. Pretium vulputate sapien nec sagittis aliquam. Neque laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt. Iaculis urna id volutpat lacus laoreet non. Morbi quis commodo odio aenean. Dui faucibus in ornare quam. Pretium viverra suspendisse potenti nullam ac tortor vitae purus faucibus.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Amet Consectetur",
                        description: "Et malesuada fames",
                        date: "",
                        priority: "",
                        details: "Pharetra diam sit amet nisl suscipit adipiscing bibendum est. Cursus eget nunc scelerisque viverra mauris in aliquam. Ipsum a arcu cursus vitae congue. Amet consectetur adipiscing elit pellentesque habitant morbi tristique. Platea dictumst vestibulum rhoncus est. Porta nibh venenatis cras sed felis. Non enim praesent elementum facilisis leo vel fringilla est. Nunc sed augue lacus viverra vitae congue eu consequat. Ut etiam sit amet nisl purus in mollis nunc. Senectus et netus et malesuada fames ac turpis. Volutpat ac tincidunt vitae semper quis lectus nulla.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Cras Adipiscing",
                        description: "proin fermentum",
                        date: "",
                        priority: "",
                        details: "Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Ac auctor augue mauris augue neque. Elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Eget duis at tellus at urna condimentum mattis pellentesque id. Sit amet justo donec enim diam vulputate ut pharetra sit. Et tortor consequat id porta nibh. Tincidunt arcu non sodales neque. Facilisi etiam dignissim diam quis enim lobortis. Amet facilisis magna etiam tempor orci eu lobortis. Felis imperdiet proin fermentum leo vel orci porta non. Ut etiam sit amet nisl. Cras adipiscing enim eu turpis egestas pretium aenean. Lectus quam id leo in vitae turpis. In mollis nunc sed id semper risus. Scelerisque eu ultrices vitae auctor eu. Massa placerat duis ultricies lacus sed. Lectus magna fringilla urna porttitor.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Nunc Consequat",
                        description: "net ultrices neque",
                        date: "",
                        priority: "",
                        details: "Pellentesque adipiscing commodo elit at imperdiet dui. Arcu risus quis varius quam quisque id diam vel quam. Enim diam vulputate ut pharetra sit amet aliquam. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat. Morbi leo urna molestie at elementum eu facilisis sed odio. Id semper risus in hendrerit gravida rutrum quisque non tellus. Volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend. Non arcu risus quis varius. Eros donec ac odio tempor. Nunc consequat interdum varius sit amet mattis vulputate. Eros donec ac odio tempor orci. Ante metus dictum at tempor commodo ullamcorper a lacus. Mi eget mauris pharetra et ultrices neque.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Potenti Nullam",
                        description: "Etiam erat velit",
                        date: "",
                        priority: "",
                        details: "Lacus vel facilisis volutpat est velit egestas. Diam maecenas ultricies mi eget mauris pharetra. Massa sed elementum tempus egestas sed sed risus pretium quam. Justo nec ultrices dui sapien. Lacus vestibulum sed arcu non odio euismod lacinia at. Netus et malesuada fames ac. Purus gravida quis blandit turpis. Gravida quis blandit turpis cursus in hac habitasse platea dictumst. Mauris augue neque gravida in fermentum et sollicitudin ac orci. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Nulla facilisi etiam dignissim diam. Metus vulputate eu scelerisque felis imperdiet proin fermentum leo. Massa enim nec dui nunc mattis enim ut tellus elementum. Quisque non tellus orci ac auctor. Pharetra et ultrices neque ornare aenean euismod elementum nisi. Ultricies mi eget mauris pharetra et. Velit laoreet id donec ultrices tincidunt arcu. Etiam erat velit scelerisque in. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse sed.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Pharetra Vel",
                        description: "Sit amet porttitor",
                        date: "",
                        priority: "",
                        details: "Arcu bibendum at varius vel pharetra vel turpis nunc. Vestibulum lorem sed risus ultricies tristique nulla. Purus gravida quis blandit turpis cursus in hac habitasse platea. Pellentesque elit eget gravida cum. Sit amet porttitor eget dolor morbi non. Fusce ut placerat orci nulla pellentesque dignissim enim sit. Fringilla ut morbi tincidunt augue. In est ante in nibh mauris cursus mattis. Ante in nibh mauris cursus mattis. Amet volutpat consequat mauris nunc congue nisi vitae. Quisque id diam vel quam elementum pulvinar etiam non. Venenatis tellus in metus vulputate.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "exclamationmark.bubble.fill",
                   name: "Elit pellentesque",
                   description: "Sed vulputate odio ut enim blandit volutpat. Nunc vel risus commodo viverra maecenas. Etiam dignissim diam quis enim lobortis scelerisque fermentum. Consectetur adipiscing elit duis tristique sollicitudin nibh sit. Libero justo laoreet sit amet cursus sit amet dictum sit. Penatibus et magnis dis parturient. A pellentesque sit amet porttitor eget dolor morbi non. Leo vel fringilla est ullamcorper. Velit euismod in pellentesque massa placerat duis. Netus et malesuada fames ac turpis. Risus quis varius quam quisque id diam. Adipiscing elit pellentesque habitant morbi tristique senectus et. Non arcu risus quis varius quam quisque id diam vel. Ut venenatis tellus in metus.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Libero enim",
                        description: "Vitae nunc sed",
                        date: "",
                        priority: "",
                        details: "Convallis aenean et tortor at. Lacus sed turpis tincidunt id aliquet risus feugiat in ante. Nulla facilisi etiam dignissim diam quis enim. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Quis commodo odio aenean sed adipiscing diam donec adipiscing. Libero enim sed faucibus turpis in. Amet tellus cras adipiscing enim eu turpis egestas pretium aenean. Volutpat blandit aliquam etiam erat velit scelerisque in dictum non. Sit amet consectetur adipiscing elit pellentesque. Amet massa vitae tortor condimentum lacinia. Vitae nunc sed velit dignissim. Habitant morbi tristique senectus et netus et malesuada. Est lorem ipsum dolor sit. Tortor id aliquet lectus proin nibh nisl. Est sit amet facilisis magna etiam tempor orci eu. Cursus metus aliquam eleifend mi in. Sed augue lacus viverra vitae congue eu. Bibendum at varius vel pharetra vel turpis. Netus et malesuada fames ac turpis egestas maecenas pharetra. Purus viverra accumsan in nisl nisi.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Amet Commodo",
                        description: "Netus et malesuada",
                        date: "",
                        priority: "",
                        details: "Laoreet sit amet cursus sit amet dictum. Eros donec ac odio tempor orci dapibus. Et leo duis ut diam quam nulla porttitor massa id. Ornare quam viverra orci sagittis eu. Mauris cursus mattis molestie a iaculis at. Elit sed vulputate mi sit amet mauris commodo quis. Velit euismod in pellentesque massa. A arcu cursus vitae congue mauris rhoncus aenean. Amet commodo nulla facilisi nullam vehicula. Natoque penatibus et magnis dis parturient. Aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Ut porttitor leo a diam. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat. At ultrices mi tempus imperdiet nulla malesuada pellentesque. Tortor id aliquet lectus proin nibh nisl condimentum id venenatis. Morbi tincidunt augue interdum velit euismod in pellentesque massa placerat.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Pulvinar Sapien",
                        description: "Ultrices gravida",
                        date: "",
                        priority: "",
                        details: "Congue quisque egestas diam in arcu cursus euismod quis viverra. Ultrices gravida dictum fusce ut placerat orci nulla. Ultrices dui sapien eget mi proin sed libero enim. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Eget lorem dolor sed viverra ipsum nunc. Pulvinar sapien et ligula ullamcorper malesuada. Cursus euismod quis viverra nibh cras pulvinar. Neque gravida in fermentum et. Id faucibus nisl tincidunt eget. Sed egestas egestas fringilla phasellus faucibus scelerisque. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Auctor eu augue ut lectus arcu bibendum at. Viverra orci sagittis eu volutpat odio facilisis mauris sit.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Posuere Lorem",
                        description: "Sed viverra ipsum",
                        date: "",
                        priority: "",
                        details: "Ac auctor augue mauris augue neque gravida in fermentum et. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Magna ac placerat vestibulum lectus mauris. Aliquet bibendum enim facilisis gravida. Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Lacus laoreet non curabitur gravida arcu ac tortor. Eu nisl nunc mi ipsum faucibus vitae. Urna neque viverra justo nec ultrices dui sapien. Sapien eget mi proin sed libero enim. Eget lorem dolor sed viverra ipsum nunc. Nulla malesuada pellentesque elit eget gravida cum sociis. In mollis nunc sed id. Non enim praesent elementum facilisis. Posuere lorem ipsum dolor sit amet. Etiam non quam lacus suspendisse faucibus interdum.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Blandit Cursus",
                        description: "Elementum curabitur",
                        date: "",
                        priority: "",
                        details: "Sed blandit libero volutpat sed cras ornare. Mi bibendum neque egestas congue quisque. Suspendisse potenti nullam ac tortor. In cursus turpis massa tincidunt dui ut ornare lectus. Cursus turpis massa tincidunt dui. Pharetra vel turpis nunc eget lorem dolor. Id leo in vitae turpis. Lacus vestibulum sed arcu non odio euismod. Elementum curabitur vitae nunc sed velit. Sit amet consectetur adipiscing elit duis tristique sollicitudin. Quam nulla porttitor massa id neque aliquam. Non pulvinar neque laoreet suspendisse. Posuere morbi leo urna molestie at elementum eu facilisis sed. Duis convallis convallis tellus id interdum. In nibh mauris cursus mattis molestie a iaculis. Auctor urna nunc id cursus metus. Sit amet dictum sit amet justo donec. Dignissim suspendisse in est ante in nibh. Neque aliquam vestibulum morbi blandit cursus risus at ultrices. Venenatis tellus in metus vulputate eu scelerisque felis.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "chart.bar.fill",
                   name: "Elementum curabitur",
                   description: "Non consectetur a erat nam at lectus urna duis. Nibh venenatis cras sed felis eget velit aliquet sagittis. Viverra nam libero justo laoreet sit amet cursus. Erat imperdiet sed euismod nisi. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Cursus vitae congue mauris rhoncus aenean. Pellentesque nec nam aliquam sem et tortor consequat id porta. Massa tempor nec feugiat nisl. Tristique senectus et netus et malesuada. Nullam Elementum curabitur arcu. Praesent semper feugiat nibh sed pulvinar proin. Mauris ultrices eros in cursus turpis. Imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Accumsan tortor posuere ac ut consequat semper. Lacus viverra vitae congue eu. Neque vitae tempus quam pellentesque.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Turpis Cursus",
                        description: "pellentesque adipiscing",
                        date: "",
                        priority: "",
                        details: "Nunc scelerisque viverra mauris in aliquam sem fringilla. Congue mauris rhoncus aenean vel. Netus et malesuada fames ac turpis egestas sed. Purus non enim praesent elementum facilisis leo vel fringilla est. Cursus vitae congue mauris rhoncus aenean. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat. Suscipit adipiscing bibendum est ultricies integer quis. Aliquam faucibus purus in massa tempor nec feugiat nisl pretium. Felis imperdiet proin fermentum leo vel. Mattis pellentesque id nibh tortor. Scelerisque in dictum non consectetur a erat nam at. Gravida quis blandit turpis cursus in hac habitasse platea. Cursus mattis molestie a iaculis at erat pellentesque adipiscing commodo. Orci phasellus egestas tellus rutrum tellus pellentesque. Varius quam quisque id diam vel. Quis enim lobortis scelerisque fermentum dui faucibus in. Molestie a iaculis at erat pellentesque adipiscing commodo elit. Gravida cum sociis natoque penatibus et magnis dis. Amet massa vitae tortor condimentum lacinia.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Scelerisque",
                        description: "Amet cursus sit",
                        date: "",
                        priority: "",
                        details: "Eget nulla facilisi etiam dignissim diam. Pellentesque diam volutpat commodo sed. Sed risus pretium quam vulputate dignissim. Non tellus orci ac auctor augue mauris augue. Non quam lacus suspendisse faucibus. Molestie at elementum eu facilisis sed odio morbi quis commodo. Amet cursus sit amet dictum sit amet justo donec. Vel fringilla est ullamcorper eget nulla facilisi. Mauris rhoncus aenean vel elit scelerisque. Sem nulla pharetra diam sit. Tristique senectus et netus et malesuada fames.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Amet Dictum",
                        description: "Imperdiet sed",
                        date: "",
                        priority: "",
                        details: "Vulputate sapien nec sagittis aliquam malesuada bibendum arcu. A lacus vestibulum sed arcu non odio. Aliquet porttitor lacus luctus accumsan tortor posuere ac. Faucibus in ornare quam viverra orci sagittis eu volutpat. Sit amet cursus sit amet dictum sit amet. Ac turpis egestas sed tempus urna. Eu consequat ac felis donec et odio. Sed adipiscing diam donec adipiscing tristique risus nec feugiat in. Rutrum quisque non tellus orci ac auctor. Vehicula ipsum a arcu cursus vitae congue mauris. Ipsum suspendisse ultrices gravida dictum fusce ut placerat. Imperdiet sed euismod nisi porta. Dignissim convallis aenean et tortor at risus. Nulla facilisi cras fermentum odio eu feugiat pretium nibh ipsum. Orci a scelerisque purus semper. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Nisl Rhoncus",
                        description: "Faucibus ornare",
                        date: "",
                        priority: "",
                        details: "Nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices. Est ante in nibh mauris cursus. Tortor aliquam nulla facilisi cras fermentum. Auctor neque vitae tempus quam pellentesque. Non odio euismod lacinia at. Dignissim sodales ut eu sem integer vitae justo eget. Aliquet bibendum enim facilisis gravida neque convallis. Dui accumsan sit amet nulla facilisi morbi tempus iaculis. Purus ut faucibus pulvinar elementum integer enim neque volutpat ac. Dignissim suspendisse in est ante in nibh mauris. Lobortis elementum nibh tellus molestie nunc non blandit massa enim. Sed risus pretium quam vulputate dignissim suspendisse in est ante. Eu tincidunt tortor aliquam nulla facilisi cras fermentum odio eu. Aliquet eget sit amet tellus cras adipiscing enim eu turpis. Congue nisi vitae suscipit tellus mauris a. Donec et odio pellentesque diam volutpat commodo sed egestas egestas. Purus in massa tempor nec feugiat nisl. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse. Ridiculus mus mauris vitae ultricies leo.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Consectetur",
                        description: "Adipiscing enim eu",
                        date: "",
                        priority: "",
                        details: "Quam id leo in vitae turpis massa sed. In eu mi bibendum neque egestas. Suscipit adipiscing bibendum est ultricies integer. Rutrum quisque non tellus orci ac auctor augue mauris. Condimentum id venenatis a condimentum vitae sapien. Vulputate eu scelerisque felis imperdiet. Ornare arcu odio ut sem nulla pharetra diam sit. Dui vivamus arcu felis bibendum ut tristique et egestas quis. Enim ut tellus elementum sagittis vitae et leo. Nisi est sit amet facilisis. Tortor id aliquet lectus proin nibh nisl condimentum id. Vel eros donec ac odio tempor orci dapibus ultrices in. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Adipiscing enim eu turpis egestas pretium aenean. Accumsan sit amet nulla facilisi morbi tempus iaculis. Scelerisque fermentum dui faucibus in ornare. Blandit volutpat maecenas volutpat blandit. Venenatis a condimentum vitae sapien. Velit sed ullamcorper morbi tincidunt ornare massa eget egestas.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Nec Sagittis",
                        description: "in nisl nisi scelerisque",
                        date: "",
                        priority: "",
                        details: "Scelerisque eu ultrices vitae auctor eu. Ac tincidunt vitae semper quis. Varius duis at consectetur lorem donec massa sapien faucibus. Id venenatis a condimentum vitae sapien pellentesque habitant morbi. Lacus luctus accumsan tortor posuere. Viverra accumsan in nisl nisi scelerisque eu. Urna id volutpat lacus laoreet non curabitur gravida arcu. Quam adipiscing vitae proin sagittis nisl rhoncus mattis. Neque vitae tempus quam pellentesque nec nam aliquam. Nec sagittis aliquam malesuada bibendum arcu vitae. Felis donec et odio pellentesque diam volutpat. Fames ac turpis egestas maecenas. Convallis a cras semper auctor neque vitae tempus. Tellus at urna condimentum mattis. Fermentum posuere urna nec tincidunt praesent. Augue mauris augue neque gravida. Odio pellentesque diam volutpat commodo. Mauris vitae ultricies leo integer.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Diam In",
                        description: "Lorem dolor sed",
                        date: "",
                        priority: "",
                        details: "Platea dictumst quisque sagittis purus. Nunc consequat interdum varius sit amet mattis vulputate enim. Vulputate dignissim suspendisse in est ante in nibh mauris. Vestibulum lectus mauris ultrices eros in cursus turpis massa. Dignissim cras tincidunt lobortis feugiat. Euismod nisi porta lorem mollis aliquam ut porttitor. Iaculis eu non diam phasellus. Neque volutpat ac tincidunt vitae semper quis lectus. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Amet purus gravida quis blandit turpis. Diam in arcu cursus euismod. Vel facilisis volutpat est velit. Est sit amet facilisis magna etiam tempor.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Consequat",
                        description: "Obortis scelerisque",
                        date: "",
                        priority: "",
                        details: "Posuere sollicitudin aliquam ultrices sagittis orci. Auctor urna nunc id cursus metus aliquam eleifend mi in. Ut consequat semper viverra nam libero justo. Nisl pretium fusce id velit ut. Quis ipsum suspendisse ultrices gravida dictum fusce ut. Purus gravida quis blandit turpis cursus in hac habitasse. Vel facilisis volutpat est velit egestas dui id ornare. Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Aliquam id diam maecenas ultricies mi eget mauris pharetra et. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra. Ut aliquam purus sit amet luctus. Elit eget gravida cum sociis natoque penatibus. Posuere urna nec tincidunt praesent semper feugiat nibh sed. Sit amet commodo nulla facilisi nullam vehicula ipsum.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "person.3.fill",
                   name: "Dui faucibus in",
                   description: "Tincidunt tortor aliquam nulla facilisi cras fermentum odio eu feugiat. Congue eu consequat ac felis donec et odio. Enim praesent elementum facilisis leo vel fringilla. Scelerisque eu ultrices vitae auctor eu augue. Egestas fringilla phasellus faucibus scelerisque. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Vel quam elementum pulvinar etiam non quam lacus. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Sit amet consectetur adipiscing elit pellentesque. Dui faucibus in ornare quam viverra. Amet risus nullam eget felis eget. Enim sed faucibus turpis in eu mi bibendum neque egestas. Fringilla ut morbi tincidunt augue interdum. Risus at ultrices mi tempus imperdiet nulla. Ac feugiat sed lectus vestibulum mattis. Quam pellentesque nec nam aliquam sem et tortor consequat id. Dolor sit amet consectetur adipiscing.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Tortor Aliquam",
                        description: "Gravida rutrum",
                        date: "",
                        priority: "",
                        details: "Faucibus purus in massa tempor nec feugiat nisl. Praesent elementum facilisis leo vel fringilla. Mauris ultrices eros in cursus turpis massa tincidunt dui ut. Sit amet est placerat in egestas erat imperdiet sed euismod. Gravida rutrum quisque non tellus orci ac. Sed risus pretium quam vulputate dignissim suspendisse in est. In ornare quam viverra orci sagittis. Elementum nibh tellus molestie nunc non. Interdum velit laoreet id donec ultrices tincidunt. Tortor aliquam nulla facilisi cras fermentum odio eu. Fermentum iaculis eu non diam phasellus vestibulum. Ultrices neque ornare aenean euismod elementum nisi quis eleifend.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Tincidunt",
                        description: "Id faucibus nisl",
                        date: "",
                        priority: "",
                        details: "Risus nec feugiat in fermentum posuere. Aliquam sem fringilla ut morbi tincidunt augue interdum velit. Orci eu lobortis elementum nibh. Turpis egestas pretium aenean pharetra magna ac. Vitae et leo duis ut diam. Et molestie ac feugiat sed lectus. Lobortis feugiat vivamus at augue eget. Nec tincidunt praesent semper feugiat nibh sed pulvinar proin gravida. Egestas integer eget aliquet nibh praesent tristique magna sit. Id faucibus nisl tincidunt eget. Odio ut enim blandit volutpat.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Porttitor",
                        description: "Nulla facilisi",
                        date: "",
                        priority: "",
                        details: "Elementum eu facilisis sed odio morbi quis commodo. Id velit ut tortor pretium viverra suspendisse. Nisl nunc mi ipsum faucibus. Dolor sit amet consectetur adipiscing. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt. Nulla facilisi cras fermentum odio eu feugiat pretium nibh ipsum. Pellentesque sit amet porttitor eget dolor morbi non. Elementum integer enim neque volutpat ac tincidunt vitae. Donec massa sapien faucibus et molestie ac. Hac habitasse platea dictumst vestibulum.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "hand.thumbsup.fill",
                   name: "Tortor pretium",
                   description: "Amet mattis vulputate enim nulla aliquet. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis auctor elit sed vulputate mi sit amet mauris. Quis ipsum suspendisse ultrices gravida. Lorem mollis aliquam ut porttitor leo a diam. Placerat vestibulum lectus mauris ultrices. Aliquet eget sit amet tellus cras. Tempor orci eu lobortis elementum nibh tellus. Nec tincidunt praesent semper feugiat nibh sed. Pharetra convallis posuere morbi leo. Donec ultrices tincidunt arcu non sodales. Nulla at volutpat diam ut venenatis tellus. Tortor pretium viverra suspendisse potenti. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Suscipit adipiscing bibendum est ultricies integer quis.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Adipiscing",
                        description: "Aliquam eleifend",
                        date: "",
                        priority: "",
                        details: "Eget duis at tellus at urna condimentum mattis pellentesque. Euismod quis viverra nibh cras pulvinar. Adipiscing elit ut aliquam purus sit amet. Congue eu consequat ac felis donec et odio pellentesque. Donec et odio pellentesque diam. Sed adipiscing diam donec adipiscing tristique risus. Iaculis urna id volutpat lacus laoreet. Elit at imperdiet dui accumsan sit amet nulla facilisi. Tincidunt eget nullam non nisi est sit amet facilisis magna. Eros in cursus turpis massa tincidunt. Cursus metus aliquam eleifend mi in nulla. Vel facilisis volutpat est velit egestas dui id ornare. Velit laoreet id donec ultrices tincidunt arcu non sodales.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Iaculis Urna",
                        description: "Pulvinar neque laoreet",
                        date: "",
                        priority: "",
                        details: "Enim nulla aliquet porttitor lacus. Nullam eget felis eget nunc lobortis mattis aliquam faucibus. Enim eu turpis egestas pretium aenean pharetra magna. Viverra justo nec ultrices dui. Egestas congue quisque egestas diam in arcu cursus. At quis risus sed vulputate odio ut enim. Massa enim nec dui nunc. Ullamcorper morbi tincidunt ornare massa eget egestas purus. Vulputate eu scelerisque felis imperdiet. Pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus. Integer quis auctor elit sed vulputate mi sit amet mauris. Iaculis urna id volutpat lacus. Nec nam aliquam sem et tortor consequat id porta nibh. Ipsum dolor sit amet consectetur. Quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Pellentesque",
                        description: "Lorem ipsum dolor",
                        date: "",
                        priority: "",
                        details: "Nulla pellentesque dignissim enim sit amet venenatis. Faucibus pulvinar elementum integer enim. Hac habitasse platea dictumst quisque sagittis purus sit amet. Varius quam quisque id diam vel quam. Pulvinar elementum integer enim neque. Ipsum a arcu cursus vitae congue mauris rhoncus aenean vel. Ligula ullamcorper malesuada proin libero nunc. Justo laoreet sit amet cursus sit amet dictum sit amet. In nibh mauris cursus mattis. Mi quis hendrerit dolor magna. Et netus et malesuada fames. Tincidunt id aliquet risus feugiat in. Leo urna molestie at elementum eu facilisis sed odio. In eu mi bibendum neque egestas congue quisque egestas. Arcu dictum varius duis at consectetur lorem donec massa. Proin libero nunc consequat interdum varius sit amet mattis vulputate.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Ullamcorper",
                        description: "Morbi tempus iaculis",
                        date: "",
                        priority: "",
                        details: "igula ullamcorper malesuada proin libero. Orci sagittis eu volutpat odio facilisis mauris sit amet. Sit amet dictum sit amet justo donec. Arcu non sodales neque sodales. Sit amet tellus cras adipiscing enim eu. Vitae congue mauris rhoncus aenean vel elit scelerisque. Tincidunt eget nullam non nisi est sit amet facilisis magna. Eget mi proin sed libero. Facilisis leo vel fringilla est ullamcorper eget. Tristique sollicitudin nibh sit amet commodo nulla facilisi. Nulla facilisi morbi tempus iaculis urna. Viverra vitae congue eu consequat ac felis donec et odio. Dui ut ornare lectus sit amet est placerat in egestas.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Ultricies Et",
                        description: "Facilisis leo vel",
                        date: "",
                        priority: "",
                        details: "In hendrerit gravida rutrum quisque non tellus orci ac auctor. In pellentesque massa placerat duis ultricies lacus sed. Lorem sed risus ultricies tristique nulla. Porttitor massa id neque aliquam vestibulum morbi blandit cursus risus. Quis ipsum suspendisse ultrices gravida dictum fusce. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Nisl pretium fusce id velit ut tortor pretium viverra. Suspendisse ultrices gravida dictum fusce ut placerat orci nulla. Euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis. Sollicitudin tempor id eu nisl nunc mi ipsum. Facilisis sed odio morbi quis commodo odio. Fringilla est ullamcorper eget nulla facilisi etiam dignissim. Ullamcorper eget nulla facilisi etiam dignissim diam quis enim. Fusce id velit ut tortor pretium viverra suspendisse potenti. Mattis aliquam faucibus purus in massa tempor nec. Sit amet consectetur adipiscing elit pellentesque habitant morbi tristique. In ante metus dictum at tempor commodo ullamcorper a lacus. Volutpat lacus laoreet non curabitur. Quam pellentesque nec nam aliquam. Fringilla urna porttitor rhoncus dolor purus non enim praesent elementum.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")])]),
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        Library(title: "Book 2", books: [
            Book(image: "book.fill", name: "facilisis magna etiam", description: "Elit scelerisque mauris pellentesque pulvinar pellentesque habitant. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Molestie at elementum eu facilisis sed. Velit euismod in pellentesque massa. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae. Amet facilisis magna etiam tempor orci eu lobortis elementum nibh. Arcu dictum varius duis at consectetur lorem donec. Aenean pharetra magna ac placerat. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sed egestas egestas fringilla phasellus faucibus scelerisque eleifend. Vitae justo eget magna fermentum. Ut sem viverra aliquet eget. Orci nulla pellentesque dignissim enim sit amet venenatis urna. Libero nunc consequat interdum varius sit amet mattis vulputate enim. Suspendisse interdum consectetur libero id faucibus nisl. Tellus molestie nunc non blandit massa enim nec. Amet aliquam id diam maecenas ultricies. Praesent tristique magna sit amet purus gravida quis blandit turpis.", numberOfUsers: 5, numberOfStories: 22, color: Color(UIColor.systemGray2), chapters: [
                Chapter(
                    icon: "person.fill",
                    role: "Donec Ultrices",
                    description: "Diam vel quam",
                    date: "",
                    priority: "",
                    details: "Donec ultrices tincidunt arcu non sodales. A diam sollicitudin tempor id eu nisl nunc mi. Risus feugiat in ante metus dictum at tempor commodo. Diam vel quam elementum pulvinar etiam non quam lacus. Sit amet nisl purus in mollis. Eget mi proin sed libero enim sed faucibus turpis in. Egestas maecenas pharetra convallis posuere morbi. Feugiat vivamus at augue eget arcu. Aliquet nibh praesent tristique magna sit. Tellus id interdum velit laoreet id donec ultrices.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Charlene",
                    storyLocation: "Paris, France",
                    storyDate: "Nov 20, 2021",
                    storyTime: "10:00 AM"),
                Chapter(
                    icon: "person.fill",
                    role: "Nisl Tincidunt",
                    description: "nibh tortor id",
                    date: "",
                    priority: "",
                    details: "Nisl tincidunt eget nullam non nisi est sit amet facilisis. Nulla facilisi etiam dignissim diam quis enim lobortis scelerisque. Pellentesque id nibh tortor id. Ut porttitor leo a diam. Viverra adipiscing at in tellus integer feugiat scelerisque varius. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. At augue eget arcu dictum. Justo eget magna fermentum iaculis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida. Nullam vehicula ipsum a arcu cursus vitae. Ut consequat semper viverra nam libero justo. Volutpat ac tincidunt vitae semper quis lectus nulla. Consequat nisl vel pretium lectus quam. Sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula ipsum.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Anya",
                    storyLocation: "Training Center",
                    storyDate: "5 Oct 2020",
                    storyTime: "1100 SGT"),
                Chapter(
                    icon: "person.fill",
                    role: "Ligula Ullamcorper",
                    description: "Hendrerit gravida rutrum",
                    date: "",
                    priority: "",
                    details: "Fermentum et sollicitudin ac orci phasellus egestas tellus. Massa id neque aliquam vestibulum morbi blandit cursus risus at. Risus in hendrerit gravida rutrum. Ut pharetra sit amet aliquam id diam maecenas. At erat pellentesque adipiscing commodo elit at imperdiet. Ligula ullamcorper malesuada proin libero. Malesuada pellentesque elit eget gravida cum sociis natoque penatibus et. Mattis molestie a iaculis at erat pellentesque adipiscing commodo elit. Consectetur libero id faucibus nisl tincidunt eget. Ultrices vitae auctor eu augue ut lectus arcu bibendum.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Anya",
                    storyLocation: "A diam maecenas",
                    storyDate: "5 Oct 2020",
                    storyTime: "1100 SGT"),
                Chapter(
                    icon: "person.fill",
                    role: "Tempor Orci",
                    description: "A diam maecenas sed",
                    date: "",
                    priority: "",
                    details: "Commodo sed egestas egestas fringilla. Egestas integer eget aliquet nibh praesent tristique magna sit. Vitae congue eu consequat ac felis donec. Pulvinar mattis nunc sed blandit libero volutpat sed cras ornare. A diam maecenas sed enim. Faucibus nisl tincidunt eget nullam non. Gravida rutrum quisque non tellus orci ac. Etiam tempor orci eu lobortis elementum nibh. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper. Ornare arcu odio ut sem nulla. Facilisis magna etiam tempor orci eu lobortis. Consequat semper viverra nam libero justo. Eget velit aliquet sagittis id consectetur purus ut faucibus pulvinar. Fames ac turpis egestas maecenas pharetra convallis posuere. Mauris vitae ultricies leo integer malesuada nunc. Iaculis nunc sed augue lacus viverra vitae congue eu consequat. Sit amet consectetur adipiscing elit pellentesque habitant. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Ullamcorper eget nulla facilisi etiam dignissim diam. Gravida neque convallis a cras semper auctor neque.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Charlene",
                    storyLocation: "Paris, France",
                    storyDate: "Nov 20, 2021",
                    storyTime: "10:00 AM"),
                Chapter(
                    icon: "person.fill",
                    role: "Quam Pellentesque",
                    description: "Adipiscing commodo",
                    date: "",
                    priority: "",
                    details: "Massa massa ultricies mi quis. Enim facilisis gravida neque convallis a. Auctor neque vitae tempus quam pellentesque nec nam. Elit pellentesque habitant morbi tristique senectus et netus. In iaculis nunc sed augue lacus viverra vitae congue eu. Molestie a iaculis at erat pellentesque adipiscing commodo. Est ultricies integer quis auctor elit sed vulputate. Malesuada bibendum arcu vitae elementum curabitur vitae. Donec massa sapien faucibus et molestie. Quam pellentesque nec nam aliquam sem. Augue mauris augue neque gravida in fermentum. Dictum varius duis at consectetur lorem donec massa. Vulputate ut pharetra sit amet aliquam id diam maecenas. Vel pharetra vel turpis nunc eget lorem. Aenean vel elit scelerisque mauris pellentesque. Ut enim blandit volutpat maecenas. Dolor magna eget est lorem ipsum dolor. Erat pellentesque adipiscing commodo elit at imperdiet dui accumsan. Varius vel pharetra vel turpis nunc eget lorem. Nunc aliquet bibendum enim facilisis gravida neque convallis a.",
                    color: Color(UIColor.systemGray2),
                    interviewer: "Charlene",
                    storyLocation: "Paris, France",
                    storyDate: "Nov 20, 2021",
                    storyTime: "10:00 AM")]),
            Book(
                   image: "person.crop.circle.fill.badge.minus",
                   name: "Tristique sollicitudin",
                   description: "Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Sagittis eu volutpat odio facilisis mauris sit amet. Ultricies tristique nulla aliquet enim tortor at. Nunc pulvinar sapien et ligula ullamcorper. Aliquam faucibus purus in massa tempor nec. Adipiscing commodo elit at imperdiet dui accumsan. Luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor. Condimentum vitae sapien pellentesque habitant morbi tristique senectus et netus. A diam sollicitudin tempor id. A cras semper auctor neque. Dui vivamus arcu felis bibendum ut tristique et egestas. Fermentum iaculis eu non diam phasellus vestibulum. Et malesuada fames ac turpis. Vitae congue eu consequat ac felis donec et odio. Velit egestas dui id ornare arcu odio. Praesent tristique magna sit amet. A arcu cursus vitae congue mauris rhoncus aenean.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Condimentum Vitae",
                        description: "Pharetra diam",
                        date: "",
                        priority: "",
                        details: "Volutpat maecenas volutpat blandit aliquam. Velit dignissim sodales ut eu sem integer vitae justo eget. Convallis tellus id interdum velit laoreet. Sollicitudin nibh sit amet commodo. Tellus id interdum velit laoreet id donec ultrices tincidunt. Eros in cursus turpis massa. Nibh tortor id aliquet lectus proin nibh nisl. Odio ut sem nulla pharetra diam. Sed felis eget velit aliquet sagittis id consectetur purus ut. Fringilla est ullamcorper eget nulla. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Cursus turpis massa tincidunt dui ut ornare lectus sit amet. Scelerisque varius morbi enim nunc faucibus a pellentesque sit.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Euismod",
                        description: "Pharetra diam",
                        date: "",
                        priority: "",
                        details: "Sed turpis tincidunt id aliquet risus feugiat in ante. Id interdum velit laoreet id donec. Facilisis volutpat est velit egestas dui id ornare arcu. In hac habitasse platea dictumst. Consectetur adipiscing elit duis tristique sollicitudin nibh sit. Eu tincidunt tortor aliquam pharetra diam. Sed id semper risus in. At imperdiet dui accumsan sit amet nulla facilisi. Euismod lacinia at quis risus sed vulputate odio ut. Cursus mattis molestie a iaculis at erat.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Tincidunt Vitae",
                        description: "Turpis massa",
                        date: "",
                        priority: "",
                        details: "Sit amet commodo nulla facilisi nullam vehicula. Arcu risus quis varius quam quisque id diam vel. Tincidunt dui ut ornare lectus sit. Diam vulputate ut pharetra sit amet aliquam id diam maecenas. Tincidunt vitae semper quis lectus nulla at volutpat diam. Turpis massa sed elementum tempus egestas sed sed risus pretium. Pretium viverra suspendisse potenti nullam. Sit amet volutpat consequat mauris nunc congue nisi vitae. Arcu odio ut sem nulla pharetra diam. Hendrerit gravida rutrum quisque non tellus. Elementum integer enim neque volutpat ac tincidunt. Amet massa vitae tortor condimentum lacinia quis. Volutpat lacus laoreet non curabitur gravida arcu. Vitae ultricies leo integer malesuada. Quis hendrerit dolor magna eget est lorem ipsum dolor sit.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Tellus",
                        description: "Fermentum Posuere",
                        date: "",
                        priority: "",
                        details: "Fusce ut placerat orci nulla pellentesque dignissim enim. Lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque. Rhoncus dolor purus non enim. Tristique sollicitudin nibh sit amet. Posuere ac ut consequat semper viverra nam libero justo laoreet. Vel turpis nunc eget lorem dolor sed viverra. Nec feugiat in fermentum posuere urna nec. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Tellus in metus vulputate eu scelerisque felis imperdiet. Dignissim sodales ut eu sem integer vitae justo eget magna.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Ullamcorper Morbi",
                        description: "aliquet nibh praesent",
                        date: "",
                        priority: "",
                        details: "Integer eget aliquet nibh praesent tristique magna sit amet purus. Ornare massa eget egestas purus viverra accumsan in nisl. Accumsan in nisl nisi scelerisque eu ultrices vitae. Felis imperdiet proin fermentum leo vel orci porta non pulvinar. Magna fermentum iaculis eu non diam phasellus vestibulum. Integer eget aliquet nibh praesent tristique magna sit amet purus. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse. Euismod lacinia at quis risus sed. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan. Neque vitae tempus quam pellentesque nec nam. Cursus mattis molestie a iaculis. Eget sit amet tellus cras adipiscing.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "waveform.path.ecg",
                   name: "Quis commodo odio",
                   description: "Sagittis purus sit amet volutpat consequat mauris nunc. Morbi blandit cursus risus at ultrices mi tempus imperdiet nulla. Condimentum id venenatis a condimentum. In fermentum et sollicitudin ac orci phasellus egestas tellus rutrum. A diam maecenas sed enim ut sem viverra aliquet. Aliquam eleifend mi in nulla posuere. A diam sollicitudin tempor id eu nisl nunc mi ipsum. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Consequat ac felis donec et odio pellentesque diam volutpat commodo. Turpis in eu mi bibendum. In hac habitasse platea dictumst vestibulum. Sit amet porttitor eget dolor morbi non arcu risus. Neque volutpat ac tincidunt vitae semper quis lectus. Quis commodo odio aenean sed adipiscing. Pulvinar sapien et ligula ullamcorper malesuada proin libero. Diam in arcu cursus euismod quis viverra nibh. Dis parturient montes nascetur ridiculus mus. Vulputate dignissim suspendisse in est ante. Aliquam sem et tortor consequat id porta nibh.", numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Venenatis",
                        description: "Quisque non tellus",
                        date: "",
                        priority: "",
                        details: "Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Congue quisque egestas diam in arcu. Consequat id porta nibh venenatis cras sed. Ornare arcu dui vivamus arcu felis bibendum ut tristique. Habitant morbi tristique senectus et netus. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Hendrerit gravida rutrum quisque non tellus. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Ullamcorper sit amet risus nullam eget felis. Venenatis a condimentum vitae sapien. Morbi tincidunt ornare massa eget egestas purus viverra accumsan in.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Ipsum Faucibus",
                        description: "Nulla facilisi morbi",
                        date: "",
                        priority: "",
                        details: "Tempus egestas sed sed risus pretium quam vulputate dignissim. Ipsum faucibus vitae aliquet nec ullamcorper sit. Ut aliquam purus sit amet luctus. Egestas congue quisque egestas diam in arcu cursus. Venenatis a condimentum vitae sapien pellentesque habitant morbi tristique senectus. Dapibus ultrices in iaculis nunc sed augue. Sit amet nulla facilisi morbi tempus iaculis urna. Nam at lectus urna duis convallis convallis. Id ornare arcu odio ut. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Ac ut consequat semper viverra nam libero justo laoreet sit.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Bibendum Enim",
                        description: "Augue interdum velit",
                        date: "",
                        priority: "",
                        details: "At elementum eu facilisis sed. Egestas egestas fringilla phasellus faucibus scelerisque. In hendrerit gravida rutrum quisque non tellus orci ac. Fermentum odio eu feugiat pretium nibh. Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Arcu cursus vitae congue mauris rhoncus aenean vel elit. Vitae congue eu consequat ac felis donec et odio. Porttitor massa id neque aliquam vestibulum morbi. Risus nullam eget felis eget nunc. Consequat nisl vel pretium lectus quam id leo in. Senectus et netus et malesuada. Bibendum enim facilisis gravida neque convallis a cras. At imperdiet dui accumsan sit amet nulla. Gravida dictum fusce ut placerat. Tincidunt augue interdum velit euismod in pellentesque massa placerat duis.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Egestas Fringilla",
                        description: "Velit sed ullamcorper",
                        date: "",
                        priority: "",
                        details: "Dolor sit amet consectetur adipiscing elit ut aliquam. Et pharetra pharetra massa massa ultricies mi. Velit euismod in pellentesque massa placerat duis ultricies. Pharetra vel turpis nunc eget. Fusce id velit ut tortor pretium viverra suspendisse. Aliquam sem fringilla ut morbi. Sed euismod nisi porta lorem mollis. Egestas fringilla phasellus faucibus scelerisque eleifend. In ante metus dictum at tempor commodo. Mi sit amet mauris commodo quis imperdiet massa tincidunt nunc. Urna cursus eget nunc scelerisque viverra. Egestas fringilla phasellus faucibus scelerisque eleifend donec. Facilisi etiam dignissim diam quis enim. Mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Et tortor at risus viverra. Semper viverra nam libero justo laoreet. Nisl suscipit adipiscing bibendum est ultricies. Erat pellentesque adipiscing commodo elit at imperdiet. Ut tristique et egestas quis ipsum suspendisse ultrices gravida dictum. Ac ut consequat semper viverra nam.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Pharetra Vel",
                        description: "Sit amet porttitor",
                        date: "",
                        priority: "",
                        details: "Arcu bibendum at varius vel pharetra vel turpis nunc. Vestibulum lorem sed risus ultricies tristique nulla. Purus gravida quis blandit turpis cursus in hac habitasse platea. Pellentesque elit eget gravida cum. Sit amet porttitor eget dolor morbi non. Fusce ut placerat orci nulla pellentesque dignissim enim sit. Fringilla ut morbi tincidunt augue. In est ante in nibh mauris cursus mattis. Ante in nibh mauris cursus mattis. Amet volutpat consequat mauris nunc congue nisi vitae. Quisque id diam vel quam elementum pulvinar etiam non. Venenatis tellus in metus vulputate.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "globe",
                   name: "Nec Sagittis",
                   description: "Viverra orci sagittis eu volutpat odio facilisis mauris. Nunc sed id semper risus. In hac habitasse platea dictumst. Sapien nec sagittis aliquam malesuada bibendum arcu vitae. Congue nisi vitae suscipit tellus mauris. Gravida rutrum quisque non tellus orci ac. Integer quis auctor elit sed vulputate mi sit. Gravida in fermentum et sollicitudin ac orci. Diam maecenas ultricies mi eget mauris pharetra. Nec sagittis aliquam malesuada bibendum. Amet purus gravida quis blandit turpis. Risus ultricies tristique nulla aliquet enim tortor at. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam eget. Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Pretium Viverra",
                        description: "libero id faucibus",
                        date: "",
                        priority: "",
                        details: "Eget est lorem ipsum dolor. Mauris ultrices eros in cursus turpis massa tincidunt. Pretium quam vulputate dignissim suspendisse in est ante in nibh. A condimentum vitae sapien pellentesque habitant morbi. Turpis in eu mi bibendum. Pretium vulputate sapien nec sagittis aliquam. Neque laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt. Iaculis urna id volutpat lacus laoreet non. Morbi quis commodo odio aenean. Dui faucibus in ornare quam. Pretium viverra suspendisse potenti nullam ac tortor vitae purus faucibus.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Amet Consectetur",
                        description: "Et malesuada fames",
                        date: "",
                        priority: "",
                        details: "Pharetra diam sit amet nisl suscipit adipiscing bibendum est. Cursus eget nunc scelerisque viverra mauris in aliquam. Ipsum a arcu cursus vitae congue. Amet consectetur adipiscing elit pellentesque habitant morbi tristique. Platea dictumst vestibulum rhoncus est. Porta nibh venenatis cras sed felis. Non enim praesent elementum facilisis leo vel fringilla est. Nunc sed augue lacus viverra vitae congue eu consequat. Ut etiam sit amet nisl purus in mollis nunc. Senectus et netus et malesuada fames ac turpis. Volutpat ac tincidunt vitae semper quis lectus nulla.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Cras Adipiscing",
                        description: "proin fermentum",
                        date: "",
                        priority: "",
                        details: "Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Ac auctor augue mauris augue neque. Elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Eget duis at tellus at urna condimentum mattis pellentesque id. Sit amet justo donec enim diam vulputate ut pharetra sit. Et tortor consequat id porta nibh. Tincidunt arcu non sodales neque. Facilisi etiam dignissim diam quis enim lobortis. Amet facilisis magna etiam tempor orci eu lobortis. Felis imperdiet proin fermentum leo vel orci porta non. Ut etiam sit amet nisl. Cras adipiscing enim eu turpis egestas pretium aenean. Lectus quam id leo in vitae turpis. In mollis nunc sed id semper risus. Scelerisque eu ultrices vitae auctor eu. Massa placerat duis ultricies lacus sed. Lectus magna fringilla urna porttitor.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Nunc Consequat",
                        description: "net ultrices neque",
                        date: "",
                        priority: "",
                        details: "Pellentesque adipiscing commodo elit at imperdiet dui. Arcu risus quis varius quam quisque id diam vel quam. Enim diam vulputate ut pharetra sit amet aliquam. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat. Morbi leo urna molestie at elementum eu facilisis sed odio. Id semper risus in hendrerit gravida rutrum quisque non tellus. Volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend. Non arcu risus quis varius. Eros donec ac odio tempor. Nunc consequat interdum varius sit amet mattis vulputate. Eros donec ac odio tempor orci. Ante metus dictum at tempor commodo ullamcorper a lacus. Mi eget mauris pharetra et ultrices neque.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Potenti Nullam",
                        description: "Etiam erat velit",
                        date: "",
                        priority: "",
                        details: "Lacus vel facilisis volutpat est velit egestas. Diam maecenas ultricies mi eget mauris pharetra. Massa sed elementum tempus egestas sed sed risus pretium quam. Justo nec ultrices dui sapien. Lacus vestibulum sed arcu non odio euismod lacinia at. Netus et malesuada fames ac. Purus gravida quis blandit turpis. Gravida quis blandit turpis cursus in hac habitasse platea dictumst. Mauris augue neque gravida in fermentum et sollicitudin ac orci. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Nulla facilisi etiam dignissim diam. Metus vulputate eu scelerisque felis imperdiet proin fermentum leo. Massa enim nec dui nunc mattis enim ut tellus elementum. Quisque non tellus orci ac auctor. Pharetra et ultrices neque ornare aenean euismod elementum nisi. Ultricies mi eget mauris pharetra et. Velit laoreet id donec ultrices tincidunt arcu. Etiam erat velit scelerisque in. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse sed.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "exclamationmark.bubble.fill",
                   name: "Elit pellentesque",
                   description: "Sed vulputate odio ut enim blandit volutpat. Nunc vel risus commodo viverra maecenas. Etiam dignissim diam quis enim lobortis scelerisque fermentum. Consectetur adipiscing elit duis tristique sollicitudin nibh sit. Libero justo laoreet sit amet cursus sit amet dictum sit. Penatibus et magnis dis parturient. A pellentesque sit amet porttitor eget dolor morbi non. Leo vel fringilla est ullamcorper. Velit euismod in pellentesque massa placerat duis. Netus et malesuada fames ac turpis. Risus quis varius quam quisque id diam. Adipiscing elit pellentesque habitant morbi tristique senectus et. Non arcu risus quis varius quam quisque id diam vel. Ut venenatis tellus in metus.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Libero enim",
                        description: "Vitae nunc sed",
                        date: "",
                        priority: "",
                        details: "Convallis aenean et tortor at. Lacus sed turpis tincidunt id aliquet risus feugiat in ante. Nulla facilisi etiam dignissim diam quis enim. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Quis commodo odio aenean sed adipiscing diam donec adipiscing. Libero enim sed faucibus turpis in. Amet tellus cras adipiscing enim eu turpis egestas pretium aenean. Volutpat blandit aliquam etiam erat velit scelerisque in dictum non. Sit amet consectetur adipiscing elit pellentesque. Amet massa vitae tortor condimentum lacinia. Vitae nunc sed velit dignissim. Habitant morbi tristique senectus et netus et malesuada. Est lorem ipsum dolor sit. Tortor id aliquet lectus proin nibh nisl. Est sit amet facilisis magna etiam tempor orci eu. Cursus metus aliquam eleifend mi in. Sed augue lacus viverra vitae congue eu. Bibendum at varius vel pharetra vel turpis. Netus et malesuada fames ac turpis egestas maecenas pharetra. Purus viverra accumsan in nisl nisi.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Amet Commodo",
                        description: "Netus et malesuada",
                        date: "",
                        priority: "",
                        details: "Laoreet sit amet cursus sit amet dictum. Eros donec ac odio tempor orci dapibus. Et leo duis ut diam quam nulla porttitor massa id. Ornare quam viverra orci sagittis eu. Mauris cursus mattis molestie a iaculis at. Elit sed vulputate mi sit amet mauris commodo quis. Velit euismod in pellentesque massa. A arcu cursus vitae congue mauris rhoncus aenean. Amet commodo nulla facilisi nullam vehicula. Natoque penatibus et magnis dis parturient. Aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Ut porttitor leo a diam. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat. At ultrices mi tempus imperdiet nulla malesuada pellentesque. Tortor id aliquet lectus proin nibh nisl condimentum id venenatis. Morbi tincidunt augue interdum velit euismod in pellentesque massa placerat.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Pulvinar Sapien",
                        description: "Ultrices gravida",
                        date: "",
                        priority: "",
                        details: "Congue quisque egestas diam in arcu cursus euismod quis viverra. Ultrices gravida dictum fusce ut placerat orci nulla. Ultrices dui sapien eget mi proin sed libero enim. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Eget lorem dolor sed viverra ipsum nunc. Pulvinar sapien et ligula ullamcorper malesuada. Cursus euismod quis viverra nibh cras pulvinar. Neque gravida in fermentum et. Id faucibus nisl tincidunt eget. Sed egestas egestas fringilla phasellus faucibus scelerisque. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Auctor eu augue ut lectus arcu bibendum at. Viverra orci sagittis eu volutpat odio facilisis mauris sit.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Posuere Lorem",
                        description: "Sed viverra ipsum",
                        date: "",
                        priority: "",
                        details: "Ac auctor augue mauris augue neque gravida in fermentum et. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Magna ac placerat vestibulum lectus mauris. Aliquet bibendum enim facilisis gravida. Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Lacus laoreet non curabitur gravida arcu ac tortor. Eu nisl nunc mi ipsum faucibus vitae. Urna neque viverra justo nec ultrices dui sapien. Sapien eget mi proin sed libero enim. Eget lorem dolor sed viverra ipsum nunc. Nulla malesuada pellentesque elit eget gravida cum sociis. In mollis nunc sed id. Non enim praesent elementum facilisis. Posuere lorem ipsum dolor sit amet. Etiam non quam lacus suspendisse faucibus interdum.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Blandit Cursus",
                        description: "Elementum curabitur",
                        date: "",
                        priority: "",
                        details: "Sed blandit libero volutpat sed cras ornare. Mi bibendum neque egestas congue quisque. Suspendisse potenti nullam ac tortor. In cursus turpis massa tincidunt dui ut ornare lectus. Cursus turpis massa tincidunt dui. Pharetra vel turpis nunc eget lorem dolor. Id leo in vitae turpis. Lacus vestibulum sed arcu non odio euismod. Elementum curabitur vitae nunc sed velit. Sit amet consectetur adipiscing elit duis tristique sollicitudin. Quam nulla porttitor massa id neque aliquam. Non pulvinar neque laoreet suspendisse. Posuere morbi leo urna molestie at elementum eu facilisis sed. Duis convallis convallis tellus id interdum. In nibh mauris cursus mattis molestie a iaculis. Auctor urna nunc id cursus metus. Sit amet dictum sit amet justo donec. Dignissim suspendisse in est ante in nibh. Neque aliquam vestibulum morbi blandit cursus risus at ultrices. Venenatis tellus in metus vulputate eu scelerisque felis.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "chart.bar.fill",
                   name: "Elementum curabitur",
                   description: "Non consectetur a erat nam at lectus urna duis. Nibh venenatis cras sed felis eget velit aliquet sagittis. Viverra nam libero justo laoreet sit amet cursus. Erat imperdiet sed euismod nisi. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Cursus vitae congue mauris rhoncus aenean. Pellentesque nec nam aliquam sem et tortor consequat id porta. Massa tempor nec feugiat nisl. Tristique senectus et netus et malesuada. Nullam Elementum curabitur arcu. Praesent semper feugiat nibh sed pulvinar proin. Mauris ultrices eros in cursus turpis. Imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Accumsan tortor posuere ac ut consequat semper. Lacus viverra vitae congue eu. Neque vitae tempus quam pellentesque.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Turpis Cursus",
                        description: "pellentesque adipiscing",
                        date: "",
                        priority: "",
                        details: "Nunc scelerisque viverra mauris in aliquam sem fringilla. Congue mauris rhoncus aenean vel. Netus et malesuada fames ac turpis egestas sed. Purus non enim praesent elementum facilisis leo vel fringilla est. Cursus vitae congue mauris rhoncus aenean. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat. Suscipit adipiscing bibendum est ultricies integer quis. Aliquam faucibus purus in massa tempor nec feugiat nisl pretium. Felis imperdiet proin fermentum leo vel. Mattis pellentesque id nibh tortor. Scelerisque in dictum non consectetur a erat nam at. Gravida quis blandit turpis cursus in hac habitasse platea. Cursus mattis molestie a iaculis at erat pellentesque adipiscing commodo. Orci phasellus egestas tellus rutrum tellus pellentesque. Varius quam quisque id diam vel. Quis enim lobortis scelerisque fermentum dui faucibus in. Molestie a iaculis at erat pellentesque adipiscing commodo elit. Gravida cum sociis natoque penatibus et magnis dis. Amet massa vitae tortor condimentum lacinia.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Scelerisque",
                        description: "Amet cursus sit",
                        date: "",
                        priority: "",
                        details: "Eget nulla facilisi etiam dignissim diam. Pellentesque diam volutpat commodo sed. Sed risus pretium quam vulputate dignissim. Non tellus orci ac auctor augue mauris augue. Non quam lacus suspendisse faucibus. Molestie at elementum eu facilisis sed odio morbi quis commodo. Amet cursus sit amet dictum sit amet justo donec. Vel fringilla est ullamcorper eget nulla facilisi. Mauris rhoncus aenean vel elit scelerisque. Sem nulla pharetra diam sit. Tristique senectus et netus et malesuada fames.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Amet Dictum",
                        description: "Imperdiet sed",
                        date: "",
                        priority: "",
                        details: "Vulputate sapien nec sagittis aliquam malesuada bibendum arcu. A lacus vestibulum sed arcu non odio. Aliquet porttitor lacus luctus accumsan tortor posuere ac. Faucibus in ornare quam viverra orci sagittis eu volutpat. Sit amet cursus sit amet dictum sit amet. Ac turpis egestas sed tempus urna. Eu consequat ac felis donec et odio. Sed adipiscing diam donec adipiscing tristique risus nec feugiat in. Rutrum quisque non tellus orci ac auctor. Vehicula ipsum a arcu cursus vitae congue mauris. Ipsum suspendisse ultrices gravida dictum fusce ut placerat. Imperdiet sed euismod nisi porta. Dignissim convallis aenean et tortor at risus. Nulla facilisi cras fermentum odio eu feugiat pretium nibh ipsum. Orci a scelerisque purus semper. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Nisl Rhoncus",
                        description: "Faucibus ornare",
                        date: "",
                        priority: "",
                        details: "Nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices. Est ante in nibh mauris cursus. Tortor aliquam nulla facilisi cras fermentum. Auctor neque vitae tempus quam pellentesque. Non odio euismod lacinia at. Dignissim sodales ut eu sem integer vitae justo eget. Aliquet bibendum enim facilisis gravida neque convallis. Dui accumsan sit amet nulla facilisi morbi tempus iaculis. Purus ut faucibus pulvinar elementum integer enim neque volutpat ac. Dignissim suspendisse in est ante in nibh mauris. Lobortis elementum nibh tellus molestie nunc non blandit massa enim. Sed risus pretium quam vulputate dignissim suspendisse in est ante. Eu tincidunt tortor aliquam nulla facilisi cras fermentum odio eu. Aliquet eget sit amet tellus cras adipiscing enim eu turpis. Congue nisi vitae suscipit tellus mauris a. Donec et odio pellentesque diam volutpat commodo sed egestas egestas. Purus in massa tempor nec feugiat nisl. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse. Ridiculus mus mauris vitae ultricies leo.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Consectetur",
                        description: "Adipiscing enim eu",
                        date: "",
                        priority: "",
                        details: "Quam id leo in vitae turpis massa sed. In eu mi bibendum neque egestas. Suscipit adipiscing bibendum est ultricies integer. Rutrum quisque non tellus orci ac auctor augue mauris. Condimentum id venenatis a condimentum vitae sapien. Vulputate eu scelerisque felis imperdiet. Ornare arcu odio ut sem nulla pharetra diam sit. Dui vivamus arcu felis bibendum ut tristique et egestas quis. Enim ut tellus elementum sagittis vitae et leo. Nisi est sit amet facilisis. Tortor id aliquet lectus proin nibh nisl condimentum id. Vel eros donec ac odio tempor orci dapibus ultrices in. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Adipiscing enim eu turpis egestas pretium aenean. Accumsan sit amet nulla facilisi morbi tempus iaculis. Scelerisque fermentum dui faucibus in ornare. Blandit volutpat maecenas volutpat blandit. Venenatis a condimentum vitae sapien. Velit sed ullamcorper morbi tincidunt ornare massa eget egestas.",
                        color: Color(UIColor.systemGray3),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "person.3.fill",
                   name: "Dui faucibus in",
                   description: "Tincidunt tortor aliquam nulla facilisi cras fermentum odio eu feugiat. Congue eu consequat ac felis donec et odio. Enim praesent elementum facilisis leo vel fringilla. Scelerisque eu ultrices vitae auctor eu augue. Egestas fringilla phasellus faucibus scelerisque. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Vel quam elementum pulvinar etiam non quam lacus. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Sit amet consectetur adipiscing elit pellentesque. Dui faucibus in ornare quam viverra. Amet risus nullam eget felis eget. Enim sed faucibus turpis in eu mi bibendum neque egestas. Fringilla ut morbi tincidunt augue interdum. Risus at ultrices mi tempus imperdiet nulla. Ac feugiat sed lectus vestibulum mattis. Quam pellentesque nec nam aliquam sem et tortor consequat id. Dolor sit amet consectetur adipiscing.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Tortor Aliquam",
                        description: "Gravida rutrum",
                        date: "",
                        priority: "",
                        details: "Faucibus purus in massa tempor nec feugiat nisl. Praesent elementum facilisis leo vel fringilla. Mauris ultrices eros in cursus turpis massa tincidunt dui ut. Sit amet est placerat in egestas erat imperdiet sed euismod. Gravida rutrum quisque non tellus orci ac. Sed risus pretium quam vulputate dignissim suspendisse in est. In ornare quam viverra orci sagittis. Elementum nibh tellus molestie nunc non. Interdum velit laoreet id donec ultrices tincidunt. Tortor aliquam nulla facilisi cras fermentum odio eu. Fermentum iaculis eu non diam phasellus vestibulum. Ultrices neque ornare aenean euismod elementum nisi quis eleifend.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Tincidunt",
                        description: "Id faucibus nisl",
                        date: "",
                        priority: "",
                        details: "Risus nec feugiat in fermentum posuere. Aliquam sem fringilla ut morbi tincidunt augue interdum velit. Orci eu lobortis elementum nibh. Turpis egestas pretium aenean pharetra magna ac. Vitae et leo duis ut diam. Et molestie ac feugiat sed lectus. Lobortis feugiat vivamus at augue eget. Nec tincidunt praesent semper feugiat nibh sed pulvinar proin gravida. Egestas integer eget aliquet nibh praesent tristique magna sit. Id faucibus nisl tincidunt eget. Odio ut enim blandit volutpat.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Porttitor",
                        description: "Nulla facilisi",
                        date: "",
                        priority: "",
                        details: "Elementum eu facilisis sed odio morbi quis commodo. Id velit ut tortor pretium viverra suspendisse. Nisl nunc mi ipsum faucibus. Dolor sit amet consectetur adipiscing. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt. Nulla facilisi cras fermentum odio eu feugiat pretium nibh ipsum. Pellentesque sit amet porttitor eget dolor morbi non. Elementum integer enim neque volutpat ac tincidunt vitae. Donec massa sapien faucibus et molestie ac. Hac habitasse platea dictumst vestibulum.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Nec Sagittis",
                        description: "in nisl nisi scelerisque",
                        date: "",
                        priority: "",
                        details: "Scelerisque eu ultrices vitae auctor eu. Ac tincidunt vitae semper quis. Varius duis at consectetur lorem donec massa sapien faucibus. Id venenatis a condimentum vitae sapien pellentesque habitant morbi. Lacus luctus accumsan tortor posuere. Viverra accumsan in nisl nisi scelerisque eu. Urna id volutpat lacus laoreet non curabitur gravida arcu. Quam adipiscing vitae proin sagittis nisl rhoncus mattis. Neque vitae tempus quam pellentesque nec nam aliquam. Nec sagittis aliquam malesuada bibendum arcu vitae. Felis donec et odio pellentesque diam volutpat. Fames ac turpis egestas maecenas. Convallis a cras semper auctor neque vitae tempus. Tellus at urna condimentum mattis. Fermentum posuere urna nec tincidunt praesent. Augue mauris augue neque gravida. Odio pellentesque diam volutpat commodo. Mauris vitae ultricies leo integer.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Diam In",
                        description: "Lorem dolor sed",
                        date: "",
                        priority: "",
                        details: "Platea dictumst quisque sagittis purus. Nunc consequat interdum varius sit amet mattis vulputate enim. Vulputate dignissim suspendisse in est ante in nibh mauris. Vestibulum lectus mauris ultrices eros in cursus turpis massa. Dignissim cras tincidunt lobortis feugiat. Euismod nisi porta lorem mollis aliquam ut porttitor. Iaculis eu non diam phasellus. Neque volutpat ac tincidunt vitae semper quis lectus. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Amet purus gravida quis blandit turpis. Diam in arcu cursus euismod. Vel facilisis volutpat est velit. Est sit amet facilisis magna etiam tempor.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Consequat",
                        description: "Obortis scelerisque",
                        date: "",
                        priority: "",
                        details: "Posuere sollicitudin aliquam ultrices sagittis orci. Auctor urna nunc id cursus metus aliquam eleifend mi in. Ut consequat semper viverra nam libero justo. Nisl pretium fusce id velit ut. Quis ipsum suspendisse ultrices gravida dictum fusce ut. Purus gravida quis blandit turpis cursus in hac habitasse. Vel facilisis volutpat est velit egestas dui id ornare. Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Aliquam id diam maecenas ultricies mi eget mauris pharetra et. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra. Ut aliquam purus sit amet luctus. Elit eget gravida cum sociis natoque penatibus. Posuere urna nec tincidunt praesent semper feugiat nibh sed. Sit amet commodo nulla facilisi nullam vehicula ipsum.",
                        color: Color(UIColor.systemGray2),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")]),
            Book(
                   image: "hand.thumbsup.fill",
                   name: "Tortor pretium",
                   description: "Amet mattis vulputate enim nulla aliquet. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis auctor elit sed vulputate mi sit amet mauris. Quis ipsum suspendisse ultrices gravida. Lorem mollis aliquam ut porttitor leo a diam. Placerat vestibulum lectus mauris ultrices. Aliquet eget sit amet tellus cras. Tempor orci eu lobortis elementum nibh tellus. Nec tincidunt praesent semper feugiat nibh sed. Pharetra convallis posuere morbi leo. Donec ultrices tincidunt arcu non sodales. Nulla at volutpat diam ut venenatis tellus. Tortor pretium viverra suspendisse potenti. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Suscipit adipiscing bibendum est ultricies integer quis.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 chapters: [
                    Chapter(
                        icon: "person.fill",
                        role: "Adipiscing",
                        description: "Aliquam eleifend",
                        date: "",
                        priority: "",
                        details: "Eget duis at tellus at urna condimentum mattis pellentesque. Euismod quis viverra nibh cras pulvinar. Adipiscing elit ut aliquam purus sit amet. Congue eu consequat ac felis donec et odio pellentesque. Donec et odio pellentesque diam. Sed adipiscing diam donec adipiscing tristique risus. Iaculis urna id volutpat lacus laoreet. Elit at imperdiet dui accumsan sit amet nulla facilisi. Tincidunt eget nullam non nisi est sit amet facilisis magna. Eros in cursus turpis massa tincidunt. Cursus metus aliquam eleifend mi in nulla. Vel facilisis volutpat est velit egestas dui id ornare. Velit laoreet id donec ultrices tincidunt arcu non sodales.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Iaculis Urna",
                        description: "Pulvinar neque laoreet",
                        date: "",
                        priority: "",
                        details: "Enim nulla aliquet porttitor lacus. Nullam eget felis eget nunc lobortis mattis aliquam faucibus. Enim eu turpis egestas pretium aenean pharetra magna. Viverra justo nec ultrices dui. Egestas congue quisque egestas diam in arcu cursus. At quis risus sed vulputate odio ut enim. Massa enim nec dui nunc. Ullamcorper morbi tincidunt ornare massa eget egestas purus. Vulputate eu scelerisque felis imperdiet. Pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus. Integer quis auctor elit sed vulputate mi sit amet mauris. Iaculis urna id volutpat lacus. Nec nam aliquam sem et tortor consequat id porta nibh. Ipsum dolor sit amet consectetur. Quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Pellentesque",
                        description: "Lorem ipsum dolor",
                        date: "",
                        priority: "",
                        details: "Nulla pellentesque dignissim enim sit amet venenatis. Faucibus pulvinar elementum integer enim. Hac habitasse platea dictumst quisque sagittis purus sit amet. Varius quam quisque id diam vel quam. Pulvinar elementum integer enim neque. Ipsum a arcu cursus vitae congue mauris rhoncus aenean vel. Ligula ullamcorper malesuada proin libero nunc. Justo laoreet sit amet cursus sit amet dictum sit amet. In nibh mauris cursus mattis. Mi quis hendrerit dolor magna. Et netus et malesuada fames. Tincidunt id aliquet risus feugiat in. Leo urna molestie at elementum eu facilisis sed odio. In eu mi bibendum neque egestas congue quisque egestas. Arcu dictum varius duis at consectetur lorem donec massa. Proin libero nunc consequat interdum varius sit amet mattis vulputate.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Ullamcorper",
                        description: "Morbi tempus iaculis",
                        date: "",
                        priority: "",
                        details: "igula ullamcorper malesuada proin libero. Orci sagittis eu volutpat odio facilisis mauris sit amet. Sit amet dictum sit amet justo donec. Arcu non sodales neque sodales. Sit amet tellus cras adipiscing enim eu. Vitae congue mauris rhoncus aenean vel elit scelerisque. Tincidunt eget nullam non nisi est sit amet facilisis magna. Eget mi proin sed libero. Facilisis leo vel fringilla est ullamcorper eget. Tristique sollicitudin nibh sit amet commodo nulla facilisi. Nulla facilisi morbi tempus iaculis urna. Viverra vitae congue eu consequat ac felis donec et odio. Dui ut ornare lectus sit amet est placerat in egestas.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM"),
                    Chapter(
                        icon: "person.fill",
                        role: "Ultricies Et",
                        description: "Facilisis leo vel",
                        date: "",
                        priority: "",
                        details: "In hendrerit gravida rutrum quisque non tellus orci ac auctor. In pellentesque massa placerat duis ultricies lacus sed. Lorem sed risus ultricies tristique nulla. Porttitor massa id neque aliquam vestibulum morbi blandit cursus risus. Quis ipsum suspendisse ultrices gravida dictum fusce. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Nisl pretium fusce id velit ut tortor pretium viverra. Suspendisse ultrices gravida dictum fusce ut placerat orci nulla. Euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis. Sollicitudin tempor id eu nisl nunc mi ipsum. Facilisis sed odio morbi quis commodo odio. Fringilla est ullamcorper eget nulla facilisi etiam dignissim. Ullamcorper eget nulla facilisi etiam dignissim diam quis enim. Fusce id velit ut tortor pretium viverra suspendisse potenti. Mattis aliquam faucibus purus in massa tempor nec. Sit amet consectetur adipiscing elit pellentesque habitant morbi tristique. In ante metus dictum at tempor commodo ullamcorper a lacus. Volutpat lacus laoreet non curabitur. Quam pellentesque nec nam aliquam. Fringilla urna porttitor rhoncus dolor purus non enim praesent elementum.",
                        color: Color(UIColor.systemGray),
                        interviewer: "Charlene",
                        storyLocation: "Paris, France",
                        storyDate: "Nov 20, 2021",
                        storyTime: "10:00 AM")])])]
    
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
//        let newBookID = libraries[referenceProjectID - 1].books.count + 1 // Theme ID is
//        let newBook = Book(id: newBookID, image: image, name: name, description: description, numberOfUsers: 0, numberOfStories: 0, color: color, chapters: [], projectId: referenceProjectID)
//        libraries[referenceProjectID - 1].books.append(newBook)

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
        
//        let projectCurrent = libraries[referenceProjectID - 1]
//        let bookCurrent = projectCurrent.books[referenceBookID-1]
//        let newChapter = Chapter(icon: image, role: role, description: description, date: date, priority: priority, details: details, color: bookCurrent.color, themeId: referenceBookID)
//        libraries[referenceProjectID - 1].books[referenceBookID - 1].chapters.append(newChapter)
        
    }
    
    func deleteChapter(storyIdToRemove: UUID)
    {
//        var chapters = libraries[referenceProjectID - 1].books[referenceBookID - 1].chapters
//        var removeIndex = 0
//        var count = 0
//
//        print("story id to remove is \(storyIdToRemove)")
//
//        for currentChapter in chapters
//        {
//            //if currentStory.id == storyIdToRemove
//            if currentChapter.uniqueID == storyIdToRemove
//            {
//                removeIndex = count
//            }
//
//            count += 1
//        }
//
//
//        libraries[referenceProjectID - 1].books[referenceBookID - 1].chapters.remove(at: removeIndex)
        
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


