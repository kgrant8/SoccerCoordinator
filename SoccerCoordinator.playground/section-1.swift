
import UIKit

var player: [String:AnyObject] = [:] // player dictionary
var soccerLeague = [Dictionary<String, AnyObject>](); // Array of Players of type player Dictionary
var Dragons = [Dictionary<String, AnyObject>](); // Array of Players on team Drangon
var Sharks = [Dictionary<String, AnyObject>](); // Array of Players on team Sharks
var Raptors = [Dictionary<String, AnyObject>](); // Array of Players on team Raptors
let numOfTeams = 3; // total number of teams in the league

var proPlayers = [Dictionary<String, AnyObject>]();
var rookiePlayers = [Dictionary<String, AnyObject>]();

// ADDING ALL PLAYERS TO THE LEAGUE!!

player = ["name": "Joe Smith", "height": 42, "experience": true, "guardian": "Jim & Jan Smith"];
soccerLeague.append(player);                  // adding new player to the league

player = ["name":"Jill Tanner","height":36, "experience": true, "guardian":"Clara Tanner"];
soccerLeague.append(player);

player = ["name":"Bill Bon","height": 43, "experience":true , "guardian":"Sara and Jenny Bon"];
soccerLeague.append(player);

player = ["name":"Eva Gordon","height":45,"experience":false,"guardian":"Wendy and Mike Gordon"];
soccerLeague.append(player);

player = ["name":"Matt Gill","height":40, "experience": false,"guardian":"Charles and Sylvia Gill"];
soccerLeague.append(player)

player = ["name":"Kimmy Stein","height":41,"experience": false,"guardian":"Bill and Hillary Stein"];
soccerLeague.append(player)

player = ["name":"Sammy Adams","height":45, "experience":false,"guardian":"Jeff Adams"];
soccerLeague.append(player);

player = ["name":"Karl Saygan","height":42,"experience":true,"guardian":"Heather Bledsoe"];
soccerLeague.append(player);

player = ["name":"Suzane Greenberg","height":44,"experience": true,"guardian":"Henrietta Dumas"];
soccerLeague.append(player);

player = ["name":"Sal Dali","height":41,"experience":false,"guardian":"Gala Dali"];
soccerLeague.append(player);

player = ["name":"Joe Kavalier","height":39,"experience":false,"guardian":"Sam and Elaine Kavalier"]
soccerLeague.append(player);

player = ["name":"Ben Finkelstein","height":44,"experience":false,"guardian":"Aaron and Jill Finkelstein"]
soccerLeague.append(player);

player = ["name":"Diego Soto","height":41,"experience":true,"guardian":"Robin and Sarika Soto"];
soccerLeague.append(player);

player = ["name":"Chloe Alaska","height":47,"experience": false,"guardian":"David and Jamie Alaska"];
soccerLeague.append(player);

player = ["name":"Arnold Willis","height":43,"experience":false,"guardian":"Claire Willis"];
soccerLeague.append(player);

player = ["name":"Phillip Helm","height":44,"experience":true,"guardian":"Thomas Helm and Eva Jones"]
soccerLeague.append(player);

player = ["name":"Les Clay","height":42,"experience":true,"guardian":"Wynonna Brown"]
soccerLeague.append(player);

player = ["name":"Herschel Krustofski","height":45,"experience":true,"guardian":"Hyman and Rachel Krustofski"]
soccerLeague.append(player)


// for loop to find number of experienced players
for player in soccerLeague{

    if (player["experience"] === true)
    {
        
        proPlayers.append(player)
    }
    else
    {
        rookiePlayers.append(player)
    }

}

func balanceTeams (Dragons:[Dictionary<String, AnyObject>], Sharks : [Dictionary<String, AnyObject>], Raptors :[Dictionary<String, AnyObject>],newPlayers : [Dictionary<String, AnyObject>]) -> (Dragons:[Dictionary<String, AnyObject>], Sharks : [Dictionary<String, AnyObject>], Raptors :[Dictionary<String, AnyObject>])
{
    
    var i = 0;
    var d = Dragons;
    var s = Sharks;
    var r = Raptors;

    while (i < newPlayers.count)
    {
        switch(i % numOfTeams)
        {
            case 0: d.append(newPlayers[i])
            case 1: s.append(newPlayers[i])
            case 2: r.append(newPlayers[i])
            default: "no team"
        
    }
        i += 1;
    }


    return (d,s,r);
}

//calling balanceTeams will all Rookie players - Rookie = Expereince == False
var teams = balanceTeams(Dragons, Sharks: Sharks, Raptors: Raptors, newPlayers: rookiePlayers)


//Adding rookie players to thier repsective teams
Dragons = teams.Dragons
Raptors = teams.Raptors
Sharks = teams.Sharks


//calling balance Teams with proPlayers - Pro = Expereince == True
teams = balanceTeams(Dragons, Sharks: Sharks, Raptors: Raptors, newPlayers: proPlayers)

//Adding Pros to their repsective teams
Dragons = teams.Dragons
Raptors = teams.Raptors
Sharks = teams.Sharks

func printLetter(teamName:String,time:String,day:String,roster:[Dictionary<String, AnyObject>]) -> Void
{
    var i = 0;
    let parents = "guardian"
    let playerName = "name"
    
    
    while (i < roster.count){
    print("Dear, \(roster[i][parents]!) \n\n \(roster[i][playerName]!) has been placed on a team!");
        print("\n\nTeam name: \(teamName)!")
        print("First Practice: \(day) @ \(time)")
        print("\n Looking forward to a great season!!\n")
        i += 1;
    
        
    }

    return;
}


//printing out letters to all players
print("***THE DRAGONS LINEUP ***\n")
printLetter("Dragons", time: "1pm",day: "March 17", roster: Dragons);

print("***THE SHARKS LINEUP ***\n")
printLetter("Sharks", time: "3pm", day: "March 17", roster: Sharks);

print("***THE RAPTORS LINEUP ***\n")
printLetter("Raptors", time: "1pm", day: "March 18", roster: Raptors);












