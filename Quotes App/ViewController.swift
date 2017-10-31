//
//  ViewController.swift
//  Quotes App
//
//  Created by Joy Biswas on 3/11/17.
//  Copyright © 2017 Joy Biswas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var mainQuotes: UILabel!
    
    
    var quotes = ["Failur is the mother of success so dont be scared to fail","Do not take life too seriously. You will never get out of it alive.","Always remember that you are absolutely unique. Just like everyone else.","Any girl can be glamorous. All you have to do is stand still and look stupid.","Progress is man's ability to complicate simplicity.","Women will never be as successful as men because they have no wives to advise them."," The only good husbands stay bachelors: They're too considerate to get married.",
        " I’m not really a heavy smoker any more. I only get through two lighters a day now.",
        " You can be young without money but you can't be old without it.",
         "It's a recession when your neighbor loses his job: it's a depression when you lose yours.",
         "There is no difference between a wise man and a fool when they fall in love."]
    var images = [#imageLiteral(resourceName: "Biogradska_suma"),#imageLiteral(resourceName: "Hopetoun_falls"),#imageLiteral(resourceName: "new-york-1590175_1280"), #imageLiteral(resourceName: "wood-nature-sunny-forest"),#imageLiteral(resourceName: "Singapore_Skyline_at_Dusk"),#imageLiteral(resourceName: "skyline-936589_1280")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainQuotes.text = quotes[generateRandomNumber()]
      
    }
    func generateRandomNumber() -> Int {
        let randomNumber = arc4random_uniform((UInt32(quotes.count)))
        return Int(randomNumber)
    }
    func randomNumberForImage() ->Int{
        let randomNumberIm = arc4random_uniform(UInt32(images.count))
        return Int(randomNumberIm)
    }



    @IBAction func inspireMe(_ sender: UIButton) {
        mainQuotes.text = quotes[generateRandomNumber()]
        image.image = images[randomNumberForImage()]
    }
}

