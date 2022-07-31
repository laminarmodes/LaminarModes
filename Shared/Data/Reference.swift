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
        for _ in libraries[currentProjectIndex].flavours
        {
            //            projects[currentProjectIndex].themes[currentThemeIndex].color = Color(themeColors[currentThemeIndex])
            
            libraries[currentProjectIndex].flavours[currentThemeIndex].color = (colorScheme == .dark ? Colors().vDark[currentThemeIndex] : Colors().vLight[currentThemeIndex])
            
            //.opacity(0.3)
            
            currentStoryIndex = 0
            for _ in libraries[currentProjectIndex].flavours[currentThemeIndex].desserts
            {
                libraries[currentProjectIndex].flavours[currentThemeIndex].desserts[currentStoryIndex].color = (colorScheme == .dark ? Colors().vDark[currentThemeIndex] : Colors().vLight[currentThemeIndex])
                //.opacity(0.3)
                
                currentStoryIndex += 1
            }
            
            currentThemeIndex += 1
        }
        
        
        
        currentThemeIndex = 0
        
        currentProjectIndex = 0
        currentThemeIndex = 0
        for _ in libraries[currentProjectIndex].flavours
        {
            libraries[currentProjectIndex].flavours[currentThemeIndex].color = (colorScheme == .dark ? Colors().pLight[currentThemeIndex] : Colors().pDark[currentThemeIndex])
            //.opacity(0.3)
            
            currentStoryIndex = 0
            for _ in libraries[currentProjectIndex].flavours[currentThemeIndex].desserts
            {
                libraries[currentProjectIndex].flavours[currentThemeIndex].desserts[currentStoryIndex].color = (colorScheme == .dark ? Colors().pLight[currentThemeIndex] : Colors().pDark[currentThemeIndex])
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
        Market(name: "Market 1", flavours: [
            Flavour(image: "ico_blueberry", name: "Blueberry", description: "Blueberries are one of the few foods that have a naturally blue color (from the anthocyanin pigment).  They can take on a green, red and purple color before they become blue and ripe.  In the northern hemisphere, they harvest during the May to August time period and one blueberry bush can grow over 6,000 blueberries each year.  This fruit is very small and ranges from only 5-16mm in diameter.  Blueberries are used fresh, frozen, or juiced and are very popular in breakfast foods and desserts.  Blueberries are very well known for their antioxidants and also contain fiber and vitamin C", numberOfUsers: 5, numberOfStories: 22, color: Color(UIColor.systemGray2), desserts: [
                Dessert(
                    image: "blueberry-7",
                    type: "Candy",
                    description: "Blueberry flavor candy",
                    date: "",
                    priority: "",
                    details: "Why not taste a blueberry flavored candy?  Just make sure to floss and brush immediately afterwards.  It’s interesting to look at the various terms used around the world: candy, sweets, or follies.  There is not much nutritional in these small pieces of concentrated sugar but they sure can be fun to taste.",
                    color: Color(UIColor.systemGray2),
                    item: "Dessert",
                    amount: "65.72",
                    dateOfCreation: "Nov 20, 2021",
                    itemID: "#2GA34"),
                Dessert(
                    image: "blueberry-6",
                    type: "Smoothie",
                    description: "Blueberry flavor smoothie",
                    date: "",
                    priority: "",
                    details: "How about starting the morning or afternoon off with a blueberry smoothie?  Did you know that the liquidation of fruits and vegetables was patented in 1932 by Stephen Poplawski?  He was the first to put spinning blades at the bottom of a machine to make a mixer.",
                    color: Color(UIColor.systemGray2),
                    item: "Dessert",
                    amount: "34.83",
                    dateOfCreation: "5 Oct 2020",
                    itemID: "#154A7"),
                Dessert(
                    image: "blueberry-5",
                    type: "Crushed Ice",
                    description: "Blueberry flavor crushed ice",
                    date: "",
                    priority: "",
                    details: "How about some shaved ice with blueberry syrup? In the 12th century this was a very expensive dessert that was not very accessible due to the difficulties in ice production and maintenance.  How times have changed.",
                    color: Color(UIColor.systemGray2),
                    item: "Dessert",
                    amount: "90.25",
                    dateOfCreation: "5 Oct 2020",
                    itemID: "#164A7")]),
            Flavour(
                   image: "ico_raspberry",
                   name: "Raspberry",
                   description: "The raspberry is part of the rose family and it’s name comes from raspise which means ‘a sweet rose-colored wine’.  An average raspberry has over 100 seeds.  A raspberry will not ripen once it is picked and a major part of its anatomy is different from a blackberry in that is has a hollow core because when it is picked, the stem does not stay with the fruit.  The color of raspberry can be red, purple, gold, or black.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 desserts: [
                    Dessert(
                        image: "rasberry-6",
                        type: "Smoothie",
                        description: "Raspberry flavor smoothie",
                        date: "",
                        priority: "",
                        details: "How about starting the morning or afternoon off with a raspberry smoothie?  Did you know that the liquidation of fruits and vegetables was patented in 1932 by Stephen Poplawski?  He was the first to put spinning blades at the bottom of a machine to make a mixer.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "61.48",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#1GD4D"),
                    Dessert(
                        image: "rasberry-5",
                        type: "Crushed Ice",
                        description: "Raspberry flavor crushed ice",
                        date: "",
                        priority: "",
                        details: "How about some shaved ice with raspberry syrup? In the 12th century this was a very expensive dessert that was not very accessible due to the difficulties in ice production and maintenance.  How times have changed.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "98.21",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#124AS"),
                    Dessert(
                        image: "rasberry-4",
                        type: "Doughnuts",
                        description: "Raspberry flavor doughnuts",
                        date: "",
                        priority: "",
                        details: "Who can turn down a sugary (flavour) flavored doughnut?  Did you know that doughnuts didn’t always had holes.  The hole was introduced so help them fry move evenly.  Anyhow enough of the facts, lets eat.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "26.68",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#48WA7"),
                    Dessert(
                        image: "rasberry-3",
                        type: "Ice Lolly",
                        description: "Raspberry flavor ice lolly",
                        date: "",
                        priority: "",
                        details: "Does Magnum come in raspberry flavour?  This is a real treat after dinner while watching a film.  If you eat it too slow though the shell may fall off and mess up your pajamas ",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "27.98",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#1242"),
                    Dessert(
                        image: "rasberry-8",
                        type: "Cake",
                        description: "Raspberry flavor cake",
                        date: "",
                        priority: "",
                        details: "How about a nice tall raspberry cake to share?  The first ever cake was actually a flat compacted disc made from grain.  Many of the earliest cakes were more similar to bread than modern day cake.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "109.90",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#124A7"),
                    Dessert(
                        image: "rasberry-2",
                        type: "Ice Cream",
                        description: "Raspberry flavor ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant raspberry flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "217.23",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#12MA7"),
                    Dessert(
                        image: "rasberry-1",
                        type: "Sorbet",
                        description: "Raspberry flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free raspberry flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "10.36",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#FH49S")]),
            Flavour(
                   image: "ico_plum",
                   name: "Plum",
                   description: "The plum is a diverse fruit with several varieties which include but are not limited to: Damson, Prune, Victoria, Satsuma, Mirabelle, Greengage, Yellowgage and more…It is the second most cultivated fruit in the world and is grown on every single continent except for Antarctica.  The taste of plum can also vary from very sweet to tart.  Plums are very tasty when eaten fresh and used for juices.  They can also be converted into alcoholic beverages", numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 desserts: [
                    Dessert(
                        image: "plum-1",
                        type: "Sorbet",
                        description: "Plum flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free plum flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "46.23",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#02UJE"),
                    Dessert(
                        image: "plum-8",
                        type: "Cake",
                        description: "Plum flavor cake",
                        date: "",
                        priority: "",
                        details: "How about a nice tall plum cake to share?  The first ever cake was actually a flat compacted disc made from grain.  Many of the earliest cakes were more similar to bread than modern day cake.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "59.21",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "982HR"),
                    Dessert(
                        image: "plum-4",
                        type: "Doughnuts",
                        description: "Plum flavor doughnuts",
                        date: "",
                        priority: "",
                        details: "Who can turn down a sugary plum flavored doughnut?  Did you know that doughnuts didn’t always had holes.  The hole was introduced so help them fry move evenly.  Anyhow enough of the facts, lets eat.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "49.21",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#ZCA72"),
                    Dessert(
                        image: "plum-5",
                        type: "Crushed Ice",
                        description: "Plum flavor crushed ice",
                        date: "",
                        priority: "",
                        details: "How about some shaved ice with plum syrup? In the 12th century this was a very expensive dessert that was not very accessible due to the difficulties in ice production and maintenance.  How times have changed.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "92.34",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "259WD")]),
            Flavour(
                   image: "ico_dragonfruit",
                   name: "Dragon Fruit",
                   description: "The dragon fruit grows on a cactus and is resistant to droughts.  It has 4 different variations: pink skin with white flesh, red skin with red flesh, red skin with purple flesh and yellow skin with white flesh.  Asia is the largest market for dragon fruit and you can find it in many tasty dishes and refreshing smoothies.  It is rich in fiber, protein, iron, and antioxidants.  The seeds are edible and resemble the seeds of a kiwi.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 desserts: [
                    Dessert(
                        image: "dragonfruit-8",
                        type: "Cake",
                        description: "Dragon fruit flavor dragon fruit",
                        date: "",
                        priority: "",
                        details: "How about a nice tall dragon fruit cake to share?  The first ever cake was actually a flat compacted disc made from grain.  Many of the earliest cakes were more similar to bread than modern day cake.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "37.29",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "093U2"),
                    Dessert(
                        image: "dragonfruit-6",
                        type: "Smoothie",
                        description: "Dragon fruit flavor smoothie",
                        date: "",
                        priority: "",
                        details: "How about starting the morning or afternoon off with a dragon fruit smoothie?  Did you know that the liquidation of fruits and vegetables was patented in 1932 by Stephen Poplawski?  He was the first to put spinning blades at the bottom of a machine to make a mixer.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "83.12",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#SG12L"),
                    Dessert(
                        image: "dragonfruit-4",
                        type: "Cookies",
                        description: "Dragon fruit flavor cookies",
                        date: "",
                        priority: "",
                        details: "Who can turn down a sugary dragon fruit flavored doughnut?  Did you know that doughnuts didn’t always had holes.  The hole was introduced so help them fry move evenly.  Anyhow enough of the facts, lets eat.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "58.45",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#L9OL2"),
                    Dessert(
                        image: "dragonfruit-3",
                        type: "Ice Lolly",
                        description: "Dragon fruit ice lolly",
                        date: "",
                        priority: "",
                        details: "Does Magnum come in dragon fruit flavour?  This is a real treat after dinner while watching a film.  If you eat it too slow though the shell may fall off and mess up your pajamas.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "60.20",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#091LM"),
                    Dessert(
                        image: "dragonfruit-2",
                        type: "Ice Cream",
                        description: "Dragon fruit ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant dragon fruit flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "38.10",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#2905N"),
                    Dessert(
                        image: "dragonfruit-1",
                        type: "Sorbet",
                        description: "Dragon fruit sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free dragon fruit flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "80.21",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#0PL5D")]),
            Flavour(
                   image: "ico_strawberry",
                   name: "Strawberry",
                   description: "Member of the rose family and is one of the most loved fruits, especially by children.  It is the first fruit to become ripe during the springtime The most well-known species is the garden strawberry, which originated in Brittany France.  Strawberries are very sweet and high in vitamin C.  An interesting fact is that there is a term for the fear of strawberries, which is called ‘fragariaphobia’.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 desserts: [
                    Dessert(
                        image: "strawberry-8",
                        type: "Cake",
                        description: "Strawberry flavor cake",
                        date: "",
                        priority: "",
                        details: "How about a nice tall strawberry cake to share?  The first ever cake was actually a flat compacted disc made from grain.  Many of the earliest cakes were more similar to bread than modern day cake.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "39.21",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#BNSK7"),
                    Dessert(
                        image: "strawberry-3",
                        type: "Ice Lolly",
                        description: "Strawberry flavor ice lolly",
                        date: "",
                        priority: "",
                        details: "Does Magnum come in strawberry flavour?  This is a real treat after dinner while watching a film.  If you eat it too slow though the shell may fall off and mess up your pajamas.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "69.21",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#0PL2Y"),
                    Dessert(
                        image: "strawberry-1",
                        type: "Sorbet",
                        description: "Strawberry flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free strawberry flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "69.43",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#124A7"),
                    Dessert(
                        image: "strawberry-2",
                        type: "Ice Cream",
                        description: "Strawberry flavor ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant strawberry flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "87.31",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#67QLO"),
                    Dessert(
                        image: "strawberry-4",
                        type: "Doughnuts",
                        description: "Strawberry flavor doughnuts",
                        date: "",
                        priority: "",
                        details: "Who can turn down a sugary strawberry flavored doughnut?  Did you know that doughnuts didn’t always had holes.  The hole was introduced so help them fry move evenly.  Anyhow enough of the facts, lets eat.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "23.10",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#278DF")]),
            Flavour(
                   image: "ico_watermelon",
                   name: "Watermelon",
                   description: "Watermelons, as the name suggests, are over 90% water.  There was a period where they were even used as a method for storing water.  The rinds of a watermelon can be eaten but this is rarely done because they are not very tasty.  The refreshing nature of watermelon makes it very popular in the summertime and also eating after a meal.  A clever method to pick the best watermelon is to identify it’s “ground spot” and see if it has a buttery yellow color.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 desserts: [
                    Dessert(
                        image: "watermellon-1",
                        type: "Sorbet",
                        description: "Watermelon flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free watermellon flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "5.20",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#98IKM"),
                    Dessert(
                        image: "watermellon-2",
                        type: "Ice Cream",
                        description: "Watermelon flavor ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant watermellon flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "59.27",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#980OL"),
                    Dessert(
                        image: "watermelon-3",
                        type: "Ice Lolly",
                        description: "Watermellon flavor ice lolly",
                        date: "",
                        priority: "",
                        details: "A pleasant watermelon flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "92.56",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#901NH"),
                    Dessert(
                        image: "watermellon-4",
                        type: "Doughnuts",
                        description: "Watermelon flavor doughnuts",
                        date: "",
                        priority: "",
                        details: "Who can turn down a sugary watermellon flavored doughnut?  Did you know that doughnuts didn’t always had holes.  The hole was introduced so help them fry move evenly.  Anyhow enough of the facts, lets eat.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "72.03",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#98NHE"),
                    Dessert(
                        image: "watermellon-5",
                        type: "Crushed Ice",
                        description: "Watermelon flavor crushed ice",
                        date: "",
                        priority: "",
                        details: "How about some shaved ice with watermellon syrup? In the 12th century this was a very expensive dessert that was not very accessible due to the difficulties in ice production and maintenance.  How times have changed.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "101.43",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#0LQVF"),
                    Dessert(
                        image: "watermellon-6",
                        type: "Smoothie",
                        description: "Watermelon flavor smoothie",
                        date: "",
                        priority: "",
                        details: "How about starting the morning or afternoon off with a watermellon smoothie?  Did you know that the liquidation of fruits and vegetables was patented in 1932 by Stephen Poplawski?  He was the first to put spinning blades at the bottom of a machine to make a mixer.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "39.01",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#MLIJ9"),
                    Dessert(
                        image: "watermellon-7",
                        type: "Candy",
                        description: "Watermelon flavor candy",
                        date: "",
                        priority: "",
                        details: "Why not taste a watermellon flavored candy?  Just make sure to floss and brush immediately afterwards.  It’s interesting to look at the various terms used around the world: candy, sweets, or follies.  There is not much nutritional in these small pieces of concentrated sugar but they sure can be fun to taste.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "12.20",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#482WY"),
                    Dessert(
                        image: "watermellon-8",
                        type: "Cake",
                        description: "Watermelon flavor cake",
                        date: "",
                        priority: "",
                        details: "How about a nice tall watermellon cake to share?  The first ever cake was actually a flat compacted disc made from grain.  Many of the earliest cakes were more similar to bread than modern day cake.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "72.80",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#MOLP0")]),
            Flavour(
                   image: "ico_orange",
                   name: "Orange",
                   description: "Orange trees were originally grown in China.  The tree has white leaves and a lovely fragrance.  Is the largest citrus fruit and one of the most popular juices (unlike lemons and limes).  The juice is also made frozen and mixed with concentrate.  Fresh oranges or freshly squeezed orange juice is a refreshing source of Vitamin C.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 desserts: [
                    Dessert(
                        image: "orange-1",
                        type: "Sorbet",
                        description: "Orange flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free orange flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "12.97",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#5T71W7"),
                    Dessert(
                        image: "orange-2",
                        type: "Ice Cream",
                        description: "Orange flavor ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant orange flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "83.06",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#1ET98"),
                    Dessert(
                        image: "orange-3",
                        type: "Ice Lolly",
                        description: "Orange flavor ice lolly",
                        date: "",
                        priority: "",
                        details: "Does Magnum come in orange flavour?  This is a real treat after dinner while watching a film.  If you eat it too slow though the shell may fall off and mess up your pajamas.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "40.12",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#1GD34")]),
            Flavour(
                   image: "ico_lemon",
                   name: "Lemon",
                   description: "Lemon is a beautiful fruit that are native to the Asia Pacific region.  They are rich in vitamin C, very high in acidity and therefore deliver a wonderful flavor and aesthetic enhancement to many beverages and dishes.  Their leaves can also be used to make tea.  Different varieties of lemon include: Bonne Brae,  Eureka, Lisbon, Sorrento and Yen Ben.  Lemon juice contains 5 times as much citric acid as orange juice.  They can also be used to naturally highlight hair and it has been demonstrated that one can attach electrodes to a lemon and use it to provide very low power to a device.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 desserts: [
                    Dessert(
                        image: "lemon-5",
                        type: "Crushed Ice",
                        description: "Lemon flavor crushed ice",
                        date: "",
                        priority: "",
                        details: "How about some shaved ice with lemon syrup? In the 12th century this was a very expensive dessert that was not very accessible due to the difficulties in ice production and maintenance.  How times have changed.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "85.29",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#12A7T"),
                    Dessert(
                        image: "lemon-4",
                        type: "Cookies",
                        description: "Lemon flavor cookies",
                        date: "",
                        priority: "",
                        details: "Who can turn down a sugary lemon flavored doughnut?  Did you know that doughnuts didn’t always had holes.  The hole was introduced so help them fry move evenly.  Anyhow enough of the facts, lets eat.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "49.21",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#134RF"),
                    Dessert(
                        image: "lemon-3",
                        type: "Ice Lolly",
                        description: "Lemon flavor ice lolly",
                        date: "",
                        priority: "",
                        details: "Does Magnum come in blueberry flavour?  This is a real treat after dinner while watching a film.  If you eat it too slow though the shell may fall off and mess up your pajamas.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "96.34",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#1ET67"),
                    Dessert(
                        image: "lemon-2",
                        type: "Ice Cream",
                        description: "Lemon flavor ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant lemon flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "75.24",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#4A73H"),
                    Dessert(
                        image: "lemon-1",
                        type: "Sorbet",
                        description: "Lemon flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free lemon flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "38.64",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#123M7")])]),
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        Market(name: "Market 2", flavours: [
            Flavour(image: "ico_blackberry", name: "Blackberry", description: "There are over 350 different species of blackberries located around the world.   They are delicious in desserts and jams and especially pies.  They are a rich source of many vitamins and there are are many digestive and immune health benefits that come from consuming blackberries.  They are also known to help memory, skin, vision and weight loss. With blackberries, the core is not hollow as it is with raspberries.  Just reading this makes one want to go to the supermarket now and stock up on blackberries.", numberOfUsers: 5, numberOfStories: 22, color: Color(UIColor.systemGray2), desserts: [
                Dessert(
                    image: "blackberry-7",
                    type: "Candy",
                    description: "Blackberry flavor candy",
                    date: "",
                    priority: "",
                    details: "Why not taste a blackberry flavored candy?  Just make sure to floss and brush immediately afterwards.  It’s interesting to look at the various terms used around the world: candy, sweets, or follies.  There is not much nutritional in these small pieces of concentrated sugar but they sure can be fun to taste.",
                    color: Color(UIColor.systemGray2),
                    item: "Dessert",
                    amount: "39.48",
                    dateOfCreation: "Nov 20, 2021",
                    itemID: "#U19OW"),
                Dessert(
                    image: "blackberry-3",
                    type: "Ice Lolly",
                    description: "Blackberry flavor ice lolly",
                    date: "",
                    priority: "",
                    details: "Does Magnum come in blackberry flavour?  This is a real treat after dinner while watching a film.  If you eat it too slow though the shell may fall off and mess up your pajamas.",
                    color: Color(UIColor.systemGray2),
                    item: "Dessert",
                    amount: "34.98",
                    dateOfCreation: "5 Oct 2020",
                    itemID: "#6NGHW"),
                Dessert(
                    image: "blackberry-5",
                    type: "Crushed Ice",
                    description: "Blackberry flavor crushed ice",
                    date: "",
                    priority: "",
                    details: "How about some shaved ice with blackberry syrup? In the 12th century this was a very expensive dessert that was not very accessible due to the difficulties in ice production and maintenance.  How times have changed.",
                    color: Color(UIColor.systemGray2),
                    item: "Dessert",
                    amount: "80.45",
                    dateOfCreation: "5 Oct 2020",
                    itemID: "#LO10Q"),
                Dessert(
                    image: "blackberry-1",
                    type: "Sorbet",
                    description: "Blackberry flavor sorbet",
                    date: "",
                    priority: "",
                    details: "A delicious and dairy-free blackberry flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                    color: Color(UIColor.systemGray2),
                    item: "Dessert",
                    amount: "20.87",
                    dateOfCreation: "Nov 20, 2021",
                    itemID: "#I0L27"),
                Dessert(
                    image: "blackberry-8",
                    type: "Cake",
                    description: "Blackberry flavor cake",
                    date: "",
                    priority: "",
                    details: "How about a nice tall blackberry cake to share?  The first ever cake was actually a flat compacted disc made from grain.  Many of the earliest cakes were more similar to bread than modern day cake.",
                    color: Color(UIColor.systemGray2),
                    item: "Dessert",
                    amount: "30.56",
                    dateOfCreation: "Nov 20, 2021",
                    itemID: "#MLA09")]),
            Flavour(
                   image: "ico_lavendar",
                   name: "Lavendar",
                   description: "Lavender is part of the mint family.  Lavender is used for fragrance, cleaning and calming (it is sometimes used to treat insomnia).  Not all lavender is safe for cooking.  Culinary lavender is cultivated from Lavandula angustifolia.  This can be found both fresh as well as dried and is used carefully in salads, dressings and desserts as well as teas.  It has a sweet and pleasant aroma.  ",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 desserts: [
                    Dessert(
                        image: "lavendar-5",
                        type: "Crushed Ice",
                        description: "Lavendar flavor crushed ice",
                        date: "",
                        priority: "",
                        details: "How about some shaved ice with lavendar syrup? In the 12th century this was a very expensive dessert that was not very accessible due to the difficulties in ice production and maintenance.  How times have changed.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "00.00",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#0OL1H"),
                    Dessert(
                        image: "lavendar-4",
                        type: "Doughnuts",
                        description: "Lavendar flavor doughnuts",
                        date: "",
                        priority: "",
                        details: "Who can turn down a sugary lavendar flavored doughnut?  Did you know that doughnuts didn’t always had holes.  The hole was introduced so help them fry move evenly.  Anyhow enough of the facts, lets eat.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "83.11",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#NJK0O"),
                    Dessert(
                        image: "lavendar-3",
                        type: "Ice Lolly",
                        description: "Lavendar flavor ice lolly",
                        date: "",
                        priority: "",
                        details: "Does Magnum come in lavendar flavour?  This is a real treat after dinner while watching a film.  If you eat it too slow though the shell may fall off and mess up your pajamas.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "68.02",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#OL2WS"),
                    Dessert(
                        image: "lavendar-2",
                        type: "Ice Cream",
                        description: "Lavendar flavor ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant lavendar flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "2.83",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#N0OL1"),
                    Dessert(
                        image: "lavendar-1",
                        type: "Sorbet",
                        description: "Lavendar flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free lavendar flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "50.00",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#KPQ76")]),
            Flavour(
                   image: "ico_grape",
                   name: "Concord Grape",
                   description: "The concorde grape is derived from grapes and has a dark blue or purple color.  It is often used to make grape jelly.  Concorde graphs are also known as “slip skin” grapes because the skin separated very easily from the pulp, even when rubbed gently.  Concorde wines have a very sweet and almost candy-like flavor to them.", numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 desserts: [
                    Dessert(
                        image: "concordegrape-7",
                        type: "Candy",
                        description: "Grape flavor candy",
                        date: "",
                        priority: "",
                        details: "Why not taste a grape flavored candy?  Just make sure to floss and brush immediately afterwards.  It’s interesting to look at the various terms used around the world: candy, sweets, or follies.  There is not much nutritional in these small pieces of concentrated sugar but they sure can be fun to taste.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "00.00",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#MLP08"),
                    Dessert(
                        image: "concordegrape-3",
                        type: "Ice Lolly",
                        description: "Grape flavor ice lolly",
                        date: "",
                        priority: "",
                        details: "Does Magnum come in grape flavour?  This is a real treat after dinner while watching a film.  If you eat it too slow though the shell may fall off and mess up your pajamas.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "67.21",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#KP07Y"),
                    Dessert(
                        image: "concordegrape-2",
                        type: "Ice Cream",
                        description: "Grape flavor ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant grape flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "90.32",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#KP0L1"),
                    Dessert(
                        image: "concordegrape-1",
                        type: "Sorbet",
                        description: "Grape flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free grape flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "44.24",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#NJOL2"),
                    Dessert(
                        image: "concordegrape-4",
                        type: "Doughnuts",
                        description: "Grape flavor doughnuts",
                        date: "",
                        priority: "",
                        details: "Who can turn down a sugary grape flavored doughnut?  Did you know that doughnuts didn’t always had holes.  The hole was introduced so help them fry move evenly.  Anyhow enough of the facts, lets eat.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "102.56",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#XCQ21")]),
            Flavour(
                   image: "ico_elderberry",
                   name: "Elberberry",
                   description: "Elderberry is a flowering plant with an intense blue-purple color.  It can be toxic so it is important to take precautions with it.  In fact, it should only be consumed after proper examination, preparation and cooking.  Elderberry is used in juice, jams and pies.  When safely prepared it is rich in antioxidants, vitamins and minerals.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 desserts: [
                    Dessert(
                        image: "elderberry-2",
                        type: "Ice Cream",
                        description: "Elderberry flavor ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant elderberry flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "61.50",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#O09IK"),
                    Dessert(
                        image: "elderberry-1",
                        type: "Sorbet",
                        description: "Elderberry flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free elderberry flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "1.50",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#MLOPB"),
                    Dessert(
                        image: "elderberry-6",
                        type: "Smoothie",
                        description: "Elderberry flavor smoothie",
                        date: "",
                        priority: "",
                        details: "How about starting the morning or afternoon off with a elderberry smoothie?  Did you know that the liquidation of fruits and vegetables was patented in 1932 by Stephen Poplawski?  He was the first to put spinning blades at the bottom of a machine to make a mixer.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "27.30",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#BVA65"),
                    Dessert(
                        image: "elderberry-7",
                        type: "Candy",
                        description: "Elderberry flavor candy",
                        date: "",
                        priority: "",
                        details: "Why not taste an elderberry flavored candy?  Just make sure to floss and brush immediately afterwards.  It’s interesting to look at the various terms used around the world: candy, sweets, or follies.  There is not much nutritional in these small pieces of concentrated sugar but they sure can be fun to taste.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "88.21",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#ML0L2"),
                    Dessert(
                        image: "elderberry-8",
                        type: "Cake",
                        description: "Elderberry flavor cake",
                        date: "",
                        priority: "",
                        details: "How about a nice tall elderberry cake to share?  The first ever cake was actually a flat compacted disc made from grain.  Many of the earliest cakes were more similar to bread than modern day cake.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "56.21",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#TAO98")]),
            Flavour(
                   image: "ico_mint",
                   name: "Mint",
                   description: "Mint is an aromatic plant that is used for Cooking and in sweets and cocktails.  It is also considered a refreshing symbol of hospitality.  It’s flavor and aroma make it popular for use in breath fresheners.  There are more than 30 different varieties of mint and 70% of the world’s peppermint and spearmint is produced in the USA.  One of the most well-known cocktails that use mint is the mojito.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 desserts: [
                    Dessert(
                        image: "mint-3",
                        type: "Ice Lolly",
                        description: "Mint flavor ice lolly",
                        date: "",
                        priority: "",
                        details: "Does Magnum come in mint flavour?  This is a real treat after dinner while watching a film.  If you eat it too slow though the shell may fall off and mess up your pajamas.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "45.83",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#9LQBF"),
                    Dessert(
                        image: "mint-1",
                        type: "Sorbet",
                        description: "Mint flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free mint flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "23.32",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#SL09O"),
                    Dessert(
                        image: "mint-2",
                        type: "Ice Cream",
                        description: "Mint flavor ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant mint flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "93.15",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#NZ3RF"),
                    Dessert(
                        image: "mint-5",
                        type: "Crushed Ice",
                        description: "Mint flavor crushed ice",
                        date: "",
                        priority: "",
                        details: "How about some shaved ice with mint syrup? In the 12th century this was a very expensive dessert that was not very accessible due to the difficulties in ice production and maintenance.  How times have changed.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "28.98",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#P0OQS"),
                    Dessert(
                        image: "mint-8",
                        type: "Cake",
                        description: "Mint flavor cake",
                        date: "",
                        priority: "",
                        details: "How about a nice tall mint cake to share?  The first ever cake was actually a flat compacted disc made from grain.  Many of the earliest cakes were more similar to bread than modern day cake.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "77.21",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#L0ON7")]),
            Flavour(
                   image: "ico_apple",
                   name: "Apple",
                   description: "Apples are high in fiber.  Did you know that 20% of the volume is air (which is why they float when in water)?  Apples are one of the most commonly consumed fruits in the world.  They are popular in juice, desserts, salads, pies, sauces, and many other dishes.  The apple core can be but is not usually eaten.  Apple seeds in large quantities are said to be unsafe to eat.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray3),
                 desserts: [
                    Dessert(
                        image: "apple-4",
                        type: "Cookies",
                        description: "Apple flavor cookies",
                        date: "",
                        priority: "",
                        details: "Who can turn down a sugary apple flavored doughnut?  Did you know that doughnuts didn’t always had holes.  The hole was introduced so help them fry move evenly.  Anyhow enough of the facts, lets eat.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "67.09",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#MK0FE"),
                    Dessert(
                        image: "apple-3",
                        type: "Ice Lolly",
                        description: "Apple flavor ice lolly",
                        date: "",
                        priority: "",
                        details: "Does Magnum come in apple flavour?  This is a real treat after dinner while watching a film.  If you eat it too slow though the shell may fall off and mess up your pajamas.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "20.34",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#A0P3H"),
                    Dessert(
                        image: "apple-2",
                        type: "Ice Cream",
                        description: "Apple flavor ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant apple flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "97.14",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#H0PRD"),
                    Dessert(
                        image: "apple-8",
                        type: "Cake",
                        description: "Apple flavor cake",
                        date: "",
                        priority: "",
                        details: "How about a nice tall apple cake to share?  The first ever cake was actually a flat compacted disc made from grain.  Many of the earliest cakes were more similar to bread than modern day cake.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "95.58",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#MLO4F"),
                    Dessert(
                        image: "apple-1",
                        type: "Sorbet",
                        description: "Apple flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free apple flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray3),
                        item: "Dessert",
                        amount: "40.10",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#MNO09")]),
            Flavour(
                   image: "ico_lime",
                   name: "Lime",
                   description: "Lime is a green color citrus fruit that is originally from Southeast Asia.  It is very popular in cooking and cocktails and can also be used in perfumes and cosmetics.  It is also used in perfumes and aromatherapy.  The size can range from 3 to 6 centimeters in diameter.  Lime juice is often called limeade.  Limes are also a source of vitamin C.  Fun fact: did you know that limes will sick whereas lemons will float?",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray2),
                 desserts: [
                    Dessert(
                        image: "lime-7",
                        type: "Candy",
                        description: "Lime flavor candy",
                        date: "",
                        priority: "",
                        details: "Why not taste a lime flavored candy?  Just make sure to floss and brush immediately afterwards.  It’s interesting to look at the various terms used around the world: candy, sweets, or follies.  There is not much nutritional in these small pieces of concentrated sugar but they sure can be fun to taste.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "101.20",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#LFHHY"),
                    Dessert(
                        image: "lime-8",
                        type: "Cake",
                        description: "Lime flavor cake",
                        date: "",
                        priority: "",
                        details: "How about a nice tall lime cake to share?  The first ever cake was actually a flat compacted disc made from grain.  Many of the earliest cakes were more similar to bread than modern day cake.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "40.16",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#L0IFG"),
                    Dessert(
                        image: "lime-6",
                        type: "Smoothie",
                        description: "Lime flavor smoothie",
                        date: "",
                        priority: "",
                        details: "How about starting the morning or afternoon off with a lime smoothie?  Did you know that the liquidation of fruits and vegetables was patented in 1932 by Stephen Poplawski?  He was the first to put spinning blades at the bottom of a machine to make a mixer.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "89.10",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#NDH6U"),
                    Dessert(
                        image: "lime-1",
                        type: "Sorbet",
                        description: "Lime flavor sorbet",
                        date: "",
                        priority: "",
                        details: "A delicious and dairy-free lime flavored dessert that you can enjoy before, during or after a meal.  Remember that sorbet is different from Sherbert (which does have dairy).  Did you know that sorbet likely originated as a dessert made from snow?  Who would have guessed.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "40.17",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#PL95J"),
                    Dessert(
                        image: "lime-4",
                        type: "Doughnuts",
                        description: "Lime flavor doughnuts",
                        date: "",
                        priority: "",
                        details: "Who can turn down a sugary lime flavored doughnut?  Did you know that doughnuts didn’t always had holes.  The hole was introduced so help them fry move evenly.  Anyhow enough of the facts, lets eat.",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "33.30",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#MLVZU"),
                    Dessert(
                        image: "lime-2",
                        type: "Ice Cream",
                        description: "Lime flavor ice cream",
                        date: "",
                        priority: "",
                        details: "A pleasant lime flavored ice cream to enjoy after dinner.  Would you like a cup or a cone?  Oh, the happiness….  Did you know that it takes 12 pounds of milk to make 1 gallon of ice cream?",
                        color: Color(UIColor.systemGray2),
                        item: "Dessert",
                        amount: "29.00",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#09YJ")]),
            Flavour(
                   image: "ico_avocado",
                   name: "Avocado",
                   description: "Avocado is a green and delightful fruit that is enjoyed on its own, or in salads, sandwiches, sauces, soups, dips, smoothies, and many things.  It is rich in potassium, even more than bananas.  A great way to eat avocado is with olive oil and pepper.  Guacamole is a fantastic avocado recipe and the term ‘guacamole’ actually translates to ‘avocado soup’ or ‘avocado sauce’.",
                   numberOfUsers: 5,
                   numberOfStories: 22,
                   color: Color(UIColor.systemGray),
                 desserts: [
                    Dessert(
                        image: "avocado-4",
                        type: "Doughnuts",
                        description: "Avocado flavor doughnuts",
                        date: "",
                        priority: "",
                        details: "Who can turn down a sugary avocado flavored doughnut?  Did you know that doughnuts didn’t always had holes.  The hole was introduced so help them fry move evenly.  Anyhow enough of the facts, lets eat.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "89.25",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#MJ987"),
                    Dessert(
                        image: "avocado-5",
                        type: "Crushed Ice",
                        description: "Avocado flavor crushed ice",
                        date: "",
                        priority: "",
                        details: "How about some shaved ice with avocado syrup (haha!)? In the 12th century this was a very expensive dessert that was not very accessible due to the difficulties in ice production and maintenance.  How times have changed.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "67.09",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#LFD83"),
                    Dessert(
                        image: "avocado-6",
                        type: "Smoothie",
                        description: "Avocado flavor smoothie",
                        date: "",
                        priority: "",
                        details: "How about starting the morning or afternoon off with a avocado smoothie?  Did you know that the liquidation of fruits and vegetables was patented in 1932 by Stephen Poplawski?  He was the first to put spinning blades at the bottom of a machine to make a mixer.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "94.87",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#EGHMF"),
                    Dessert(
                        image: "avocado-7",
                        type: "Candy",
                        description: "Avocado flavor candy",
                        date: "",
                        priority: "",
                        details: "Why not taste an avocado (wow) flavored candy?  Just make sure to floss and brush immediately afterwards.  It’s interesting to look at the various terms used around the world: candy, sweets, or follies.  There is not much nutritional in these small pieces of concentrated sugar but they sure can be fun to taste.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "48.92",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#M90WD"),
                    Dessert(
                        image: "avocado-8",
                        type: "Cake",
                        description: "Avocado flavor cake",
                        date: "",
                        priority: "",
                        details: "How about a nice tall avocado cake to share?  The first ever cake was actually a flat compacted disc made from grain.  Many of the earliest cakes were more similar to bread than modern day cake.",
                        color: Color(UIColor.systemGray),
                        item: "Dessert",
                        amount: "87.66",
                        dateOfCreation: "Nov 20, 2021",
                        itemID: "#MLTGH")])])]
    
    var flavours: [Flavour] {
        
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
        
        return libraries[readIndex].flavours
    }
    
    var desserts: [Dessert]
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
        for book in libraries[readIndexLibraries].flavours {
            if book.uniqueID == referenceBookID {
                readIndexBooks = countBooks
            }
            
            countBooks += 1
        }
        
        return libraries[readIndexLibraries].flavours[readIndexBooks].desserts
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
        let newBook = Flavour(image: image, name: name, description: description, numberOfUsers: 0, numberOfStories: 0, color: color, desserts: [])
        libraries[readIndexLibraries].flavours.append(newBook)

    }
    
    func findBookById(inputThemeId: UUID) -> Flavour
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
        for book in libraries[readIndexLibraries].flavours {
//            if book.uniqueID == referenceBookID {
            if book.uniqueID == inputThemeId {
                readIndexBooks = countBooks
            }
            
            countBooks += 1
        }
        return libraries[readIndexLibraries].flavours[readIndexBooks]
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
        for book in libraries[readIndexLibraries].flavours {
            if book.uniqueID == referenceBookID {
                readIndexBooks = countBooks
            }
            countBooks += 1
        }
        
        let bookCurrent = libraries[readIndexLibraries].flavours[readIndexBooks]
        let newChapter = Dessert(image: image, type: role, description: description, date: date, priority: priority, details: details, color: bookCurrent.color)
        libraries[readIndexLibraries].flavours[readIndexBooks].desserts.append(newChapter)
        
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
        for book in libraries[readIndexLibraries].flavours {
            if book.uniqueID == referenceBookID {
                readIndexBooks = countBooks
            }
            countBooks += 1
        }
        
        var readIndexChapters = 0
        var countChapters = 0
        for chapter in libraries[readIndexLibraries].flavours[readIndexBooks].desserts {
//            if chapter.uniqueID == referenceStoryID {
            if chapter.uniqueID == storyIdToRemove {
                readIndexChapters = countChapters
            }
            countChapters += 1
        }
        
        libraries[readIndexLibraries].flavours[readIndexBooks].desserts.remove(at: readIndexChapters)
        
    }
    
    //    func readStory(storyIdToRead: Int) -> iStory
    func findChapterById(storyIdToRead: UUID) -> Dessert
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
        for book in libraries[readIndexLibraries].flavours {
            if book.uniqueID == referenceBookID {
                readIndexBooks = countBooks
            }
            countBooks += 1
        }
        
        var readIndexChapters = 0
        var countChapters = 0
        for chapter in libraries[readIndexLibraries].flavours[readIndexBooks].desserts {
//            if chapter.uniqueID == referenceStoryID {
            if chapter.uniqueID == storyIdToRead {
                readIndexChapters = countChapters
            }
            countChapters += 1
        }
        
        return libraries[readIndexLibraries].flavours[readIndexBooks].desserts[readIndexChapters]
   
    }
    
    
    func totalBooks(for project: Market) -> String {
        return "\(project.flavours.count) theme\(project.flavours.count == 1 ? "" : "s")"
    }
    
    func totalChapters(for theme: Flavour) -> String {
        //return "\(theme.stories.count) story\(theme.stories.count == 1 ? "" : "s")"
        return "\(theme.desserts.count)"
        //        return theme.stories.count
    }
    
    func totalChaptersInt(for theme: Flavour) -> Int {
        //return "\(theme.stories.count) story\(theme.stories.count == 1 ? "" : "s")"
        return theme.desserts.count
        //        return theme.stories.count
    }
}


