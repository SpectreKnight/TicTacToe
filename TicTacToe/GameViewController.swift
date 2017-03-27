//
//  GameViewController.swift
//  TicTacToe
//
//  Created by Shaun Anderson on 16/03/2017.
//  Copyright © 2017 Shaun Anderson. All rights reserved.
//

import UIKit
import CoreData

class GameViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    //MARK: Properties

    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var player1NameLabel: UILabel!
    @IBOutlet weak var player2NameLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var tieLabel: UILabel!
    
    @IBOutlet weak var exitButton: UIButton!
    
    //MARK: Variables
    var grid = [Int](arrayLiteral: 0,0,0,0,0,0,0,0,0)
    var isSpace = true
    var gameOn = true
    var whoseTurn: Int = 1
    var tie: Int = 0
    var player1Score = 0
    var player2Score = 0
    var aiHelp : [Int] = [0,1,2,3,4,5,6,7,8]
    //MARK: Actions
    @IBAction func ButtonPressed(_ sender: UIButton)
    {
        //Called when a button on the grid is pressed and will change the image and value in array to the specific player.
        if(gameOn == true)
        {
            switch sender.tag
            {
            case 0:
                //Check if a player or the computer has not already taken this node of the grid and then change its value and image to reflect the player.
                if(grid[0] == 0)
                {
                    
                    grid[0] = whoseTurn
                    CheckGrid()
                    //Change Image of button
                    if(whoseTurn == 1)
                    {
                        sender.setImage(player1Image, for: .normal)
                        whoseTurn = 2
                        player1NameLabel.backgroundColor = UIColor.white
                        player2NameLabel.backgroundColor = UIColor.lightGray
                    }
                    else
                    {
                        sender.setImage(player2Image, for: .normal)
                        whoseTurn = 1
                        player2NameLabel.backgroundColor = UIColor.white
                        player1NameLabel.backgroundColor = UIColor.lightGray
                    }
                    
                    //Check if game has ended and if not display next players name.
                    if(gameOn)
                    {
                        if(vsAI)
                        {
                            gameOn = false
                            turnLabel.text = "AI's Turn"
                            
                            DispatchQueue.main.asyncAfter(
                                deadline: .now() + 0.5,
                                execute: {self.AITurn()})
                            
                        }
                        else
                        {
                            turnLabel.text = "Player \(whoseTurn) Turn"
                        }
                    }
                }
            case 1:
                if(grid[1] == 0)
                {
                    grid[1] = whoseTurn
                    CheckGrid()
                    //Change Image of button
                    if(whoseTurn == 1)
                    {
                        sender.setImage(player1Image, for: .normal)
                        whoseTurn = 2
                        player1NameLabel.backgroundColor = UIColor.clear
                        player2NameLabel.backgroundColor = UIColor.cyan
                    }
                    else
                    {
                        sender.setImage(player2Image, for: .normal)
                        whoseTurn = 1
                        player2NameLabel.backgroundColor = UIColor.clear
                        player1NameLabel.backgroundColor = UIColor.cyan
                    }
                    
                    //Check if game has ended and if not display next players name.
                    if(gameOn)
                    {
                        if(vsAI)
                        {
                            gameOn = false
                            turnLabel.text = "AI's Turn"
                            
                            DispatchQueue.main.asyncAfter(
                                deadline: .now() + 0.5,
                                execute: {self.AITurn()})
                            
                        }
                        else
                        {
                            turnLabel.text = "Player \(whoseTurn) Turn"
                        }
                    }
                    
                    
                }
            case 2:
                if(grid[2] == 0)
                {
                    grid[2] = whoseTurn
                    CheckGrid()
                    if(whoseTurn == 1)
                    {
                        sender.setImage(player1Image, for: .normal)
                        whoseTurn = 2
                        player1NameLabel.backgroundColor = UIColor.clear
                        player2NameLabel.backgroundColor = UIColor.cyan
                    }
                    else
                    {
                        sender.setImage(player2Image, for: .normal)
                        whoseTurn = 1
                        player2NameLabel.backgroundColor = UIColor.clear
                        player1NameLabel.backgroundColor = UIColor.cyan
                    }
                    
                    //Check if game has ended and if not display next players name.
                    if(gameOn)
                    {
                        if(vsAI)
                        {
                            gameOn = false
                            turnLabel.text = "AI's Turn"
                            
                            DispatchQueue.main.asyncAfter(
                                deadline: .now() + 0.5,
                                execute: {self.AITurn()})
                            
                        }
                        else
                        {
                            turnLabel.text = "Player \(whoseTurn) Turn"
                        }
                    }
                    
                    
                }
            case 3:
                if(grid[3] == 0)
                {
                    grid[3] = whoseTurn
                    CheckGrid()
                    if(whoseTurn == 1)
                    {
                        sender.setImage(player1Image, for: .normal)
                        whoseTurn = 2
                        player1NameLabel.backgroundColor = UIColor.white
                        player2NameLabel.backgroundColor = UIColor.lightGray
                    }
                    else
                    {
                        sender.setImage(player2Image, for: .normal)
                        whoseTurn = 1
                        player2NameLabel.backgroundColor = UIColor.white
                        player1NameLabel.backgroundColor = UIColor.lightGray
                    }
                    
                    //Check if game has ended and if not display next players name.
                    if(gameOn)
                    {
                        if(vsAI)
                        {
                            gameOn = false
                            turnLabel.text = "AI's Turn"
                            
                            DispatchQueue.main.asyncAfter(
                                deadline: .now() + 0.5,
                                execute: {self.AITurn()})
                            
                        }
                        else
                        {
                            turnLabel.text = "Player \(whoseTurn) Turn"
                        }
                    }
                    
                    
                }
                
            case 4:
                if(grid[4] == 0)
                {
                    grid[4] = whoseTurn
                    CheckGrid()
                    //Change Image of button
                    if(whoseTurn == 1)
                    {
                        sender.setImage(player1Image, for: .normal)
                        whoseTurn = 2
                        player1NameLabel.backgroundColor = UIColor.white
                        player2NameLabel.backgroundColor = UIColor.lightGray
                    }
                    else
                    {
                        sender.setImage(player2Image, for: .normal)
                        whoseTurn = 1
                        player2NameLabel.backgroundColor = UIColor.white
                        player1NameLabel.backgroundColor = UIColor.lightGray
                    }
                    
                    //Check if game has ended and if not display next players name.
                    if(gameOn)
                    {
                        if(vsAI)
                        {
                            gameOn = false
                            turnLabel.text = "AI's Turn"
                            
                            DispatchQueue.main.asyncAfter(
                                deadline: .now() + 0.5,
                                execute: {self.AITurn()})
                            
                        }
                        else
                        {
                            turnLabel.text = "Player \(whoseTurn) Turn"
                        }
                    }
                    
                }
                
                
            case 5:
                if(grid[5] == 0)
                {
                    grid[5] = whoseTurn
                    CheckGrid()
                    //Change Image of button
                    if(whoseTurn == 1)
                    {
                        sender.setImage(player1Image, for: .normal)
                        whoseTurn = 2
                        player1NameLabel.backgroundColor = UIColor.white
                        player2NameLabel.backgroundColor = UIColor.lightGray
                    }
                    else
                    {
                        sender.setImage(player2Image, for: .normal)
                        whoseTurn = 1
                        player2NameLabel.backgroundColor = UIColor.white
                        player1NameLabel.backgroundColor = UIColor.lightGray
                    }
                    
                    //Check if game has ended and if not display next players name.
                    if(gameOn)
                    {
                        if(vsAI)
                        {
                            gameOn = false
                            turnLabel.text = "AI's Turn"
                            
                            DispatchQueue.main.asyncAfter(
                                deadline: .now() + 0.5,
                                execute: {self.AITurn()})
                            
                        }
                        else
                        {
                            turnLabel.text = "Player \(whoseTurn) Turn"
                        }
                    }
                    
                }
            case 6:
                if(grid[6] == 0)
                {
                    grid[6] = whoseTurn
                    CheckGrid()
                    //Change Image of button
                    if(whoseTurn == 1)
                    {
                        sender.setImage(player1Image, for: .normal)
                        whoseTurn = 2
                        player1NameLabel.backgroundColor = UIColor.white
                        player2NameLabel.backgroundColor = UIColor.lightGray
                    }
                    else
                    {
                        sender.setImage(player2Image, for: .normal)
                        whoseTurn = 1
                        player2NameLabel.backgroundColor = UIColor.white
                        player1NameLabel.backgroundColor = UIColor.lightGray
                    }
                    
                    //Check if game has ended and if not display next players name.
                    if(gameOn)
                    {
                        if(vsAI)
                        {
                            gameOn = false
                            turnLabel.text = "AI's Turn"
                            
                            DispatchQueue.main.asyncAfter(
                                deadline: .now() + 0.5,
                                execute: {self.AITurn()})
                            
                        }
                        else
                        {
                            turnLabel.text = "Player \(whoseTurn) Turn"
                        }
                    }
                    
                }
            case 7:
                if(grid[7] == 0)
                {
                    grid[7] = whoseTurn
                    CheckGrid()
                    //Change Image of button
                    if(whoseTurn == 1)
                    {
                        sender.setImage(player1Image, for: .normal)
                        whoseTurn = 2
                        player1NameLabel.backgroundColor = UIColor.white
                        player2NameLabel.backgroundColor = UIColor.lightGray
                    }
                    else
                    {
                        sender.setImage(player2Image, for: .normal)
                        whoseTurn = 1
                        player2NameLabel.backgroundColor = UIColor.white
                        player1NameLabel.backgroundColor = UIColor.lightGray
                    }
                    
                    //Check if game has ended and if not display next players name.
                    if(gameOn)
                    {
                        if(vsAI)
                        {
                            gameOn = false
                            turnLabel.text = "AI's Turn"
                            
                            DispatchQueue.main.asyncAfter(
                                deadline: .now() + 0.5,
                                execute: {self.AITurn()})
                            
                        }
                        else
                        {
                            turnLabel.text = "Player \(whoseTurn) Turn"
                        }
                    }
                    
                }
            case 8:
                if(grid[8] == 0)
                {
                    grid[8] = whoseTurn
                    CheckGrid()
                    //Change Image of button
                    if(whoseTurn == 1)
                    {
                        sender.setImage(player1Image, for: .normal)
                        whoseTurn = 2
                        player1NameLabel.backgroundColor = UIColor.white
                        player2NameLabel.backgroundColor = UIColor.lightGray
                    }
                    else
                    {
                        sender.setImage(player2Image, for: .normal)
                        whoseTurn = 1
                        player2NameLabel.backgroundColor = UIColor.white
                        player1NameLabel.backgroundColor = UIColor.lightGray
                    }
                    
                    //Check if game has ended and if not display next players name.
                    if(gameOn)
                    {
                        if(vsAI)
                        {
                            gameOn = false
                            turnLabel.text = "AI's Turn"
                            
                            DispatchQueue.main.asyncAfter(
                                deadline: .now() + 0.5,
                                execute: {self.AITurn()})
                            
                        }
                        else
                        {
                            turnLabel.text = "Player \(whoseTurn) Turn"
                        }
                    }
                }
            default:
                print("hi")
            }
            
        }
    }
    @IBAction func restartGame(_ sender: UIButton)
    {
        gameOn = true
        restartButton.isHidden = true
        //exitButton.isHidden = true
        
        player1NameLabel.backgroundColor = UIColor.gray
        player2NameLabel.backgroundColor = UIColor.white
        
        grid = [Int](arrayLiteral: 0,0,0,0,0,0,0,0,0)
        turnLabel.text = "Player 1 Turn"
        whoseTurn = 1
        
        //Reset Buttons
        for button in buttons
        {
            button.setImage(UIImage(), for: .normal)
        }
    }
    
    //MARK: Functions
    override func viewDidLoad()
    {
        super.viewDidLoad()
        player1NameLabel.text = "\(player1Name): \n \(player1Score)"
        player1NameLabel.backgroundColor = UIColor.lightGray
        player2NameLabel.text = "\(player2Name): \n \(player2Score)"
        tieLabel.text = "TIE: \n \(tie)"
        
        //SET SCORES TO ZERO
        player1Score = 0
        player2Score = 0
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func AITurn()
    {
        var done = false
        
        while done != true
        {
            let randomInt = Int(arc4random_uniform(9))
            
            //CHECK IF FOR TOP WIN FROM PLAYER
            if(grid[0] == 1 && grid[1] == 1 && grid[2] == 0)
            {
                buttons[2].setImage(player2Image, for: .normal)
                grid[2] = 2
                done = true
                break
            }
            if(grid[1] == 1 && grid[2] == 1 && grid[0] == 0)
            {
                buttons[0].setImage(player2Image, for: .normal)
                grid[0] = 2
                done = true
                break
            }
            if(grid[0] == 1 && grid[2] == 1 && grid[1] == 0)
            {
                buttons[1].setImage(player2Image, for: .normal)
                grid[1] = 2
                done = true
                break
            }
            
            //CHECK FOR HORIZONAL MIDDLE WIN FROM PLAYER
            if(grid[3] == 1 && grid[4] == 1 && grid[5] == 0)
            {
                buttons[5].setImage(player2Image, for: .normal)
                grid[5] = 2
                done = true
                break
            }
            if(grid[3] == 1 && grid[5] == 1 && grid[4] == 0)
            {
                buttons[4].setImage(player2Image, for: .normal)
                grid[4] = 2
                done = true
                break
            }
            if(grid[4] == 1 && grid[5] == 1 && grid[3] == 0)
            {
                buttons[3].setImage(player2Image, for: .normal)
                grid[3] = 2
                done = true
                break
            }
            
            if(grid[4] == 0)
            {
                buttons[4].setImage(player2Image, for: .normal)
                grid[4] = 2
                done = true
            }
            else
            {
                if(grid[randomInt] == 0)
                {
                    buttons[randomInt].setImage(player2Image, for: .normal)
                    grid[randomInt] = 2
                    done = true
                }
            }
        }
        gameOn = true
        CheckGrid()
        if(gameOn == true)
        {
            player2NameLabel.backgroundColor = UIColor.white
            player1NameLabel.backgroundColor = UIColor.lightGray
            whoseTurn = 1;
            turnLabel.text = "Player \(whoseTurn) Turn"
        }

    }
    
    func CheckGrid()
    {
        //Make isSpace false and check against grid array to see if there are any spaces left
        isSpace = false
        print("hi")
        
        //HORIZONTAL TOP CHECK
        if(grid[0] == whoseTurn && grid[1] == whoseTurn && grid[2] == whoseTurn)
        {
            gameOn = false
            restartButton.isHidden = false
            exitButton.isHidden = false
            if(whoseTurn == 1)
            {
                turnLabel.text = "\(player1Name) wins"
                player1Score += 1
                player1NameLabel.text = "\(player1Name): \n \(player1Score)"
                save(name: "\(player1Name): \(player1Score) WIN | LOST \(player2Score): \(player2Name)\n")
            }
            else
            {
                turnLabel.text = "\(player2Name) wins"
                player2Score += 1
                player2NameLabel.text = "\(player2Name): \n \(player2Score)"
                save(name: "\(player2Name): \(player2Score) WIN | LOST \(player1Score): \(player1Name)\n")
            }
            buttons[0].backgroundColor = UIColor.purple
            buttons[1].backgroundColor = UIColor.purple
            buttons[2].backgroundColor = UIColor.purple
        }
        
        //HORIZONAL MIDDLE CHECK
        if(grid[3] == whoseTurn && grid[4] == whoseTurn && grid[5] == whoseTurn)
        {
            gameOn = false
            restartButton.isHidden = false
            exitButton.isHidden = false
            if(whoseTurn == 1)
            {
                turnLabel.text = "\(player1Name) wins"
                player1Score += 1
                player1NameLabel.text = "\(player1Name): \n \(player1Score)"
                save(name: "\(player1Name): \(player1Score) WIN | LOST \(player2Score): \(player2Name)\n")
            }
            else
            {
                turnLabel.text = "\(player2Name) wins"
                player2Score += 1
                player2NameLabel.text = "\(player2Name): \n \(player2Score)"
                save(name: "\(player2Name): \(player2Score) WIN | LOST \(player1Score): \(player1Name)\n")
            }
        }
        
        //HORIZONTAL BOTTON CHECK
        if(grid[6] == whoseTurn && grid[7] == whoseTurn && grid[8] == whoseTurn)
        {
            gameOn = false
            restartButton.isHidden = false
            exitButton.isHidden = false
            if(whoseTurn == 1)
            {
                turnLabel.text = "\(player1Name) wins"
                player1Score += 1
                player1NameLabel.text = "\(player1Name): \n \(player1Score)"
                save(name: "\(player1Name): \(player1Score) WIN | LOST \(player2Score): \(player2Name)\n")
            }
            else
            {
                turnLabel.text = "\(player2Name) wins"
                player2Score += 1
                player2NameLabel.text = "\(player2Name): \n \(player2Score)"
                save(name: "\(player2Name): \(player2Score) WIN | LOST \(player1Score): \(player1Name)\n")
            }
        }
        
        //VERTICAL LEFT CHECK
        if(grid[0] == whoseTurn && grid[3] == whoseTurn && grid[6] == whoseTurn)
        {
            gameOn = false
            restartButton.isHidden = false
            exitButton.isHidden = false
            if(whoseTurn == 1)
            {
                turnLabel.text = "\(player1Name) wins"
                player1Score += 1
                player1NameLabel.text = "\(player1Name): \n \(player1Score)"
                save(name: "\(player1Name): \(player1Score) WIN | LOST \(player2Score): \(player2Name)\n")
            }
            else
            {
                turnLabel.text = "\(player2Name) wins"
                player2Score += 1
                player2NameLabel.text = "\(player2Name): \n \(player2Score)"
                save(name: "\(player2Name): \(player2Score) WIN | LOST \(player1Score): \(player1Name)\n")
            }
        }
        
        //VERTICAL MIDDLE CHECK
        if(grid[1] == whoseTurn && grid[4] == whoseTurn && grid[7] == whoseTurn)
        {
            gameOn = false
            restartButton.isHidden = false
            exitButton.isHidden = false
            if(whoseTurn == 1)
            {
                turnLabel.text = "\(player1Name) wins"
                player1Score += 1
                player1NameLabel.text = "\(player1Name): \n \(player1Score)"
                save(name: "\(player1Name): \(player1Score) WIN | LOST \(player2Score): \(player2Name)\n")
            }
            else
            {
                turnLabel.text = "\(player2Name) wins"
                player2Score += 1
                player2NameLabel.text = "\(player2Name): \n \(player2Score)"
                save(name: "\(player2Name): \(player2Score) WIN | LOST \(player1Score): \(player1Name)\n")
            }
        }
        
        //VERTICAL RIGHT CHECK
        if(grid[2] == whoseTurn && grid[5] == whoseTurn && grid[8] == whoseTurn)
        {
            gameOn = false
            restartButton.isHidden = false
            exitButton.isHidden = false
            if(whoseTurn == 1)
            {
                turnLabel.text = "\(player1Name) wins"
                player1Score += 1
                player1NameLabel.text = "\(player1Name): \n \(player1Score)"
                save(name: "\(player1Name): \(player1Score) WIN | LOST \(player2Score): \(player2Name)\n")
            }
            else
            {
                turnLabel.text = "\(player2Name) wins"
                player2Score += 1
                player2NameLabel.text = "\(player2Name): \n \(player2Score)"
                save(name: "\(player2Name): \(player2Score) WIN | LOST \(player1Score): \(player1Name)\n")
            }
        }
        
        //RIGHT DIAGONAL CHECK
        if(grid[0] == whoseTurn && grid[4] == whoseTurn && grid[8] == whoseTurn)
        {
            gameOn = false
            restartButton.isHidden = false
            exitButton.isHidden = false
            if(whoseTurn == 1)
            {
                turnLabel.text = "\(player1Name) wins"
                player1Score += 1
                player1NameLabel.text = "\(player1Name): \n \(player1Score)"
                save(name: "\(player1Name): \(player1Score) WIN | LOST \(player2Score): \(player2Name)\n")
            }
            else
            {
                turnLabel.text = "\(player2Name) wins"
                player2Score += 1
                player2NameLabel.text = "\(player2Name): \n \(player2Score)"
                save(name: "\(player2Name): \(player2Score) WIN | LOST \(player1Score): \(player1Name)\n")
            }
        }
        
        //LEFT DIAGONAL CHECK
        if(grid[2] == whoseTurn && grid[4] == whoseTurn && grid[6] == whoseTurn)
        {
            gameOn = false
            restartButton.isHidden = false
            exitButton.isHidden = false
            if(whoseTurn == 1)
            {
                turnLabel.text = "\(player1Name) wins"
                player1Score += 1
                player1NameLabel.text = "\(player1Name): \n \(player1Score)"
                save(name: "\(player1Name): \(player1Score) WIN | LOST \(player2Score): \(player2Name)\n")
            }
            else
            {
                turnLabel.text = "\(player2Name) wins"
                player2Score += 1
                player2NameLabel.text = "\(player2Name): \n \(player2Score)"
                save(name: "\(player2Name): \(player2Score) WIN | LOST \(player1Score): \(player1Name)\n")
            }
        }
        
        //Check if a space is still clear
        for i in grid
        {
            if(i == 0)
            {
                isSpace = true
            }
        }
        // If the grid check has not found that a player has won and that there are no spaces left a tie is called.
        if(!isSpace && gameOn == true)
        {
            gameOn = false
            restartButton.isHidden = false
            //exitButton.isHidden = false
            turnLabel.text = "No spaces left - TIE"
            tie += 1
            tieLabel.text = "TIE: \n \(tie)"
        }
        
    }
    
    func save(name: String)
    {
        print(name)
        guard let AppDelegate = UIApplication.shared.delegate as? AppDelegate else{return}
        
        let managedContext = AppDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "History", in: managedContext)
        let history = NSManagedObject(entity: entity!, insertInto: managedContext)
        history.setValue(name, forKey: "history")
        
        do{
            try managedContext.save()
        } catch _ as NSError
        {
            print("Error saving")
        }
    }
}
