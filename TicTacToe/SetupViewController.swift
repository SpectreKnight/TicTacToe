//
//  SetupViewController.swift
//  TicTacToe
//
//  Created by Shaun Anderson on 18/03/2017.
//  Copyright © 2017 Shaun Anderson. All rights reserved.
//

import UIKit

class SetupViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var player2NameTextfield: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var player2NameLabel: UILabel!
    @IBOutlet weak var selectIconLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SETUP DEPENDING ON GAME MODE SELECTED
        if(vsAI)
        {
            titleLabel.text = "PLAYER VS COMPUTER"
            player2NameTextfield.isHidden = true
            player2NameLabel.isHidden = true
            player2Name = "COMPUTER"
            selectIconLabel.text = "SELECT ICON"
        }
        else
        {
            titleLabel.text = "PlAYER VS PLAYER"
            player2Name = "PLAYER 2"
        }
        
        //setup inital values incase player just hits start game
        
        player1Name = "PLAYER 1"
        player1Image = UIImage(named: "Cross")!
        player2Image = UIImage(named: "Circle")!
        crossButton.backgroundColor = UIColor.gray
        circleButton.backgroundColor = UIColor.darkGray

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func NameInput(_ sender: UITextField) {
        if(sender.tag == 2)
        {
            player1Name = sender.text!
        }
        if(sender.tag == 1)
        {
            
            player2Name = sender.text!
        }
    }
    
    @IBOutlet weak var crossButton: UIButton!

    @IBOutlet weak var circleButton: UIButton!
    
    @IBAction func PickImageButtonPressed(_ sender: UIButton) {
        if(sender.tag == 0)
        {
            player1Image = sender.currentImage!
            player2Image = UIImage(named: "Circle")!
            sender.backgroundColor = UIColor.gray
            circleButton.backgroundColor = UIColor.darkGray
        }
        else
        {
            player1Image = sender.currentImage!
            player2Image = UIImage(named: "Cross")!
            sender.backgroundColor = UIColor.gray
            crossButton.backgroundColor = UIColor.darkGray
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
