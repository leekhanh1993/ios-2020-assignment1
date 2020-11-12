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

func runProgram(){
    //create a dictionary to store teams
    let listNameTeam = ["Fulham", "Arsenal", "Crystal Palace", "Southampton", "Liverpool", "Leeds",
    "West Ham", "Newcastle", "West Brom", "Leicester", "Spurs", "Everton", "Sheffield Utd", "Wolves",
    "Brighton", "Chelsea", "Man Utd", "Man City", "Burnley", "Aston Villa"]


    //create team instances based on list Name Team and add into listTeam
    var listTeam: [String:Team] = [:]
    for ele in listNameTeam{
        listTeam[ele] = Team(ele)
    }

    //Read File csvfile.csv
    var matchInfoList = readFile(nameFile: "csvfile", typeFile: "csv")!

    //Create a list match

    let listMatch = createInfoToMatchList(matchInfoList: &matchInfoList, listTeam: listTeam)

    //update match information to each team
    updateInfoToTeams(listMatch: listMatch)


    //Display title for team information
    let displayColumnTable = "Club".withCString{
        String(format: "%-22s %@\t %@\t %@\t %@\t %@\t %@\t %@\t %@\t\t%@", $0, "MP","W","R","L","GF","GA","GD","Pts", "Last 5")
    }
    print(displayColumnTable);

    //sort list team based on team points
    let sortedListTeam = listTeam.sorted(by: {(arg0, arg1) -> Bool in
        let (_, valueTeamA) = arg0
        let (_, valueTeamB) = arg1
        return valueTeamA.numPoints > valueTeamB.numPoints
    })

    //display information for each team
    for team in sortedListTeam{
        team.value.printTeamInfo()
    }

}
