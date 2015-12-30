//
//  ViewController.swift
//  Ikr
//
//  Created by Simon Narang on 8/27/15.
//  Copyright © 2015 Simon Narang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var funFacts: [String] = ["The Burje Khalifa is the tallest building in the world, towering tall at twenty-seven hundred feet above sea level. You can catch a great view of the city at the top for a small fee of just 40 thousand dollars", "Apple spends over 1 and a half million dollars each year to protect their CEO, Tim Cook from people taking pictures... You wouldnt want people snaping pictures of you like some animal in a zoo (hopefully)", "Colonal Snaders made surprise visits to KFC ''restaurants''. If dissatisfied with the food he threw it to the floor while cursing out the cashiers", "A new spa house in Japan has partenered with Ramen Noodles, those things you buy cheap at the grocery store and binge eat when your tired from work. The spa uses the noodles to give customers nooodle baths in hot tubs filed with chicken broth", "A person cannot taste food unless it is mixed with saliva. For example, if strong-tasting substance like salt is placed on a dry tongue, the taste buds will not be able to taste it. As soon as a drop of saliva is added and the salt is dissolved, however, a definite taste sensation results. This is true for all foods. Try it!", "The reason firehouses have circular stairways is from the days of yore when the engines were pulled by horses. The horses were stabled on the ground floor and figured out how to walk up straight staircases.", "The rock at the summit of mount everest is marine limestone, acording to science it should have been deposited on the seafloor around 450 million years ago, yet it still lies up there, maybe Stephan Hawking was wrong afterall", "Mobile phone throwing is an offical sport in finland. (No elaboration needed)", "Microsoft has calculated that our attention span in 2015 is just 8 seconds. It was 12 seconds in the year 2000. The average teacher is 50 years old and says the average attention span in 1990 was 14 seconds... Ouch!", "If you collected the poop from 1 million Americans and mined it for metals, you'd make $13 million a year."]
    var funFactsUsed:[String] = ["hi"]
    var randomFunFactBool = false
    var randomInt = Int(arc4random_uniform(10))
    func randomDoubleChecker(I: Int){
        if funFactsUsed[I - 1] != funFacts[Int(arc4random_uniform(10))] {
            funFact.text = funFacts[Int(arc4random_uniform(10))]
            funFact.textAlignment = .Center
            funFact.font = UIFont(name: "HelveticaNeue-Bold", size: 24.0)
            print("if statement worked")
        }
        print("nope")
    }
    func recursionRandom(N: Int) {
        if N > 1 {
            randomDoubleChecker(N)
            recursionRandom(N - 1)
        }
        randomDoubleChecker(N)
        print(N)
    }
    var funfactIn = false
    /*func randomCheckery() {
        if funFactsUsed.count >= 10 {
            funFactsUsed = ["hi there"]
            print("reedid funfactsused")
            randomFunFactBool = false
        }else{
            for fact in funFactsUsed{
                if fact == funFacts[randomInt] {
                    print("nope, its in funfacts")
                    randomFunFactBool = false
                }else{
                    randomFunFactBool = true
                    print("its true")
                }
                if randomFunFactBool == true {
                    funFact.text = funFacts[randomInt]
                    funFact.textAlignment = .Center
                    funFact.font = UIFont(name: "HelveticaNeue-Bold", size: 24.0)
                    funFactsUsed.append(funFacts[Int(arc4random_uniform(10))])
                    print(funFactsUsed.count)
                    print(randomInt)
                    randomFunFactBool = false
                }
            }
        }
    }*/
    func randomChecker() {
        funfactIn = false
        print("funFactIn is false")
        if funFactsUsed.count >= 11 {
            funFactsUsed = ["hi"]
            print("count to high")
        }
        for fact in funFactsUsed{
            if funfactIn == false {
                if fact == funFacts[Int(arc4random_uniform(10))] {
                    print("nope, its in funfacts")
                    funfactIn = true
                }
                print("funfact is false")
            }
            if fact != funFacts[Int(arc4random_uniform(10))] {
                funFact.text = funFacts[Int(arc4random_uniform(10))]
                funFact.textAlignment = .Center
                funFact.font = UIFont(name: "HelveticaNeue-Bold", size: 24.0)
                print(funFactsUsed.count)
                print(randomInt)
                funFactsUsed.append(funFacts[randomInt])
                print("fact wasnt already used... success!")
            }
            if funfactIn == true{
                print("the funfact was already used")
            }
            print("func executed")
            print(randomInt)
        }
        //funFact.text = funFacts[Int(arc4random_uniform(10))]
        
        
    }
    @IBOutlet weak var funFact: UITextView!
    @IBAction func buttonOne(sender: AnyObject) {
        randomChecker()
        print("buttonOne")
    }
    @IBAction func ikrButton(sender: AnyObject) {
        randomChecker()
        print("ikrbutton")
        
    }
    @IBAction func bugButton(sender: AnyObject) {
        randomChecker()
        print("bugButton")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomFunFactBool = false
        func printFrom(N: Int) {
            print(N)
            if N > 1 {
                printFrom(N - 1)
            }
            print("we gone live!!!")
        }
        
        printFrom(5)
        funFact.text = funFacts[Int(arc4random_uniform(10))]
        funFact.textAlignment = .Center
        funFact.font = UIFont(name: "HelveticaNeue-Bold", size: 24.0)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    }

