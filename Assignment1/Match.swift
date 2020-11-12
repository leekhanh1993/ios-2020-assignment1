/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2020C
  Assessment: Assignment 1
  Author: Vo Tran Nhut Khanh
  ID: 3694787
  Created  date: 12/11/2020
  Last modified: dd/mm/yyyy (e.g. 05/04/2020)
  Acknowledgement: Acknowledge the resources that you use here.
*/

import Foundation

class Match{
    var homeTeam: Team
    var awayTeam: Team
    var date: String
    var location: String
    var homeTeamScore: Int
    var awayTeamScore: Int
    
    init(homeTeam: Team, awayTeam: Team, date: String, location: String, homeTeamScore: Int, awayTeamScore: Int) {
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
        self.date = date
        self.location = location
        self.homeTeamScore = homeTeamScore
        self.awayTeamScore = awayTeamScore
    }
    
    
}
