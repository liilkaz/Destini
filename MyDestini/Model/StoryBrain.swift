//
//  StoryBrain.swift
//  MyDestini
//
//  Created by Лилия Феодотова on 31.01.2023.
//

import Foundation

struct StoryBrain{
    let stories = [Story(title: "У вашей машины лопнула шина на извилистой дороге в глуши, где нет приема сотового телефона. Вы решаете путешествовать автостопом. Ржавый пикап с грохотом останавливается рядом с вами. Мужчина в широкополой шляпе с бездушными глазами открывает перед вами пассажирскую дверь и спрашивает: \"Подвезти, парень?\"", choice1: "Я запрыгну. Спасибо за помощь!", choice2: "Лучше сначала спрошу его, убийца ли он", choice1Destination: 2, choice2Destination: 1),
        Story(title: "Он медленно кивает, не обращая внимания на вопрос", choice1: "По крайней мере, он честен. Я залезу.", choice2: "Подожди, я знаю, как поменять колесо.", choice1Destination: 2, choice2Destination: 3),
        Story(title: "Когда вы начали движение, незнакомец начинает говорить о своих отношениях с матерью. С каждой минутой он становится все злее и злее. Он просит вас открыть бардачок. Внутри вы находите окровавленный нож, два отрубленных пальца и кассету с Элтоном Джоном. Он тянется к бардачку.", choice1: "Я люблю Элтона Джона! Передам ему кассету", choice2: "Либо он, либо я! Ты берешь нож и наносишь ему удар", choice1Destination: 5, choice2Destination: 4),
        Story(title: "Что? Это просто отговорка! Знаете ли вы, что дорожно-транспортные происшествия являются второй по значимости причиной смерти от несчастных случаев для большинства взрослых возрастных групп?", choice1: "Конец", choice2: "Конец", choice1Destination: 0, choice2Destination: 0),
        Story(title: "Когда вы проламываете ограждение и несетесь к зазубренным камням внизу, вы размышляете о сомнительной мудрости нанесения удара ножом кому-то, когда он ведет машину, в которой вы находитесь.", choice1: "Конец", choice2: "Конец", choice1Destination: 0, choice2Destination: 0),
        Story(title: "Ты связываешься с убийцей, напевая куплеты \"Чувствуешь ли ты любовь сегодня вечером\". Он высаживает тебя в следующем городе. Прежде чем вы уйдете, он спрашивает вас, знаете ли вы какие-нибудь хорошие места для захоронения тел. Вы отвечаете: \"Попробуйте пирс\"", choice1: "Конец", choice2: "Конец", choice1Destination: 0, choice2Destination: 0)
    ]
    
    var storiesNumber = 0
    
    func getStoryText() -> String {
        return stories[storiesNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storiesNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storiesNumber].choice2
    }
    
    mutating func checkChoice(userAnswer: String) -> Int {
        if userAnswer == stories[storiesNumber].choice1{
            return 1
        } else{
            return 2
        }
    }
    
    mutating func nextStory(num: Int){
        if num == 1 {
            storiesNumber = stories[storiesNumber].choice1Destination
        }else {
            storiesNumber = stories[storiesNumber].choice2Destination
        }
    }
}
