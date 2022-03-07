//
//  StoryBrain.swift
//  choiceGame
//
//  Created by nato on 07/03/2022.
//

import Foundation

struct StoryBrain{
    let stories = [
        Story(title: "I saw a boy on the road and i ask, Is your name zumzum or chimdalu", choice1: "i'm chimzurum arinze", choice2: "i'm chimdalu arinze"),
        Story(title: "do you like playing football", choice1: "yes, like the superstrikers", choice2: "No, i prefer car race"),
        Story(title: "do you like playing basketball", choice1: "yes i play it in uncle nato's house", choice2: "no, i like running cause i'm the fastest"),
        
        
        Story(title: "come along i have superstrikers comic book", choice1: "yaaaah I am happy", choice2: "Thank you very much"),
        Story(title: "sure i have video game with car racing inside", choice1: "i would like to play", choice2: "let me call my brother"),
        
        
        
        Story(title: "basketball would be a good gift to give you", choice1: "yes i can play all day", choice2: "i can become a basketballer"),
        Story(title: "then i believe you cause your fast", choice1: "i always pass all my classmate", choice2: "and also with my home work")

    ]
    
    
    var sceneNumber = 0
    var choice1Number = 0
    var choice2Number = 0



  mutating func checkAnswer(_ userChoice: String) -> Int {
      if userChoice == stories[0].choice1 {
           sceneNumber += 1
           choice1Number += 1
           choice2Number += 1
          // return sceneNumber
          // print(sceneNumber)
      } else if userChoice == stories[0].choice2 {
           sceneNumber += 2
           choice1Number += 2
           choice2Number += 2
          // print(sceneNumber)
           //return sceneNumber
      } else if userChoice == stories[1].choice1 {
          sceneNumber += 2
          choice1Number += 2
          choice2Number += 2
      } else if userChoice == stories[1].choice2 {
          sceneNumber += 3
          choice1Number += 3
          choice2Number += 3
      } else if userChoice == stories[2].choice1 {
          sceneNumber += 3
          choice1Number += 3
          choice2Number += 3
      } else if userChoice == stories[2].choice2 {
          sceneNumber += 4
          choice1Number += 4
          choice2Number += 4
      } else {
          sceneNumber = 0
          choice1Number = 0
          choice2Number = 0
      }
      //else if userChoice == stories[3].choice1 {
          //sceneNumber += 4
          //choice1Number += 4
        //  choice2Number += 4
     // } //else if userChoice == stories[3].choice2 {
         // sceneNumber += 5
        //  choice1Number += 5
         // choice2Number += 5
      //}
       return sceneNumber
   }
    
    
  mutating func nextScene() {
        if sceneNumber + 1 < stories.count {
            //sceneNumber += 1
        } else {
            sceneNumber = 0
            choice1Number = 0
            choice2Number = 0
        }
    }
    
    func getSceneText() -> String {
        return stories[sceneNumber].title
    }
    func getChoice1Text() -> String {
        return stories[choice1Number].choice1
    }
    func getChoice2Text() -> String {
        return stories[choice2Number].choice2
    }
    
}
