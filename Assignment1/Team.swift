/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2020C
  Assessment: Assignment 1
  Author: Vo Tran Nhut Khanh
  ID: 3694787
  Created  date: 11/11/2020
  Last modified: dd/mm/yyyy (e.g. 05/04/2020)
  Acknowledgement: Acknowledge the resources that you use here.
*/

import Foundation

class Team{
    var name: String
    var matchesPlayed = 0
    var numWon = 0
    var numDrawn = 0
    var numLost = 0
    var goalsFor = 0
    var goalsAgainst = 0
    var lastFiveMatch: [String] = []
    var goalsDifference: Int {
        return self.goalsFor - self.goalsAgainst
    }
     var numPoints: Int {
        return (self.numWon * 3) + self.numDrawn
    }
    
    init(_ name:String) {
        self.name = name
    }
    
    //print information of the team in a row
    func printTeamInfo(){
        let teamInfo = "\(self.name)".withCString{
            String(format: "%-20s %3d %5d %3d %3d %4d %3d %3d %3d \t%@", $0, self.matchesPlayed,
                   self.numWon,self.numDrawn, self.numLost, self.goalsFor, self.goalsAgainst, self.goalsDifference, self.numPoints, createLastFiveMatchStr())
        }
        print(teamInfo);
    }
    
    //generate a las five match string
    private func createLastFiveMatchStr()->String{
        var tmpStr = String()
        for index in stride(from: self.lastFiveMatch.endIndex - 1, to: self.lastFiveMatch.startIndex - 1, by: -1){
            tmpStr += self.lastFiveMatch[index] + " "
        }
        return tmpStr
    }
    
}
