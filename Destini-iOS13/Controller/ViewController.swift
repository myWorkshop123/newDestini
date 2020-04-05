import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }

    @IBAction func ChoiceButtonPressed(_ sender: UIButton) {
        let nextStory = storyBrain.updateQuestion() // Output 1 ,2
        let currentStoryTitle = storyBrain.getCurrentChoices()
        if sender.currentTitle == currentStoryTitle[0]{
            print("First Button pressed")
            storyBrain.setStoryNumber(number: nextStory[0])
        } else {
            print("Second Button Pressed")
            storyBrain.setStoryNumber(number: nextStory[1])
        }
        updateUI()
        
    }
    
    
    // Updating the User Interface
    func updateUI(){
        
        storyLabel.text = storyBrain.getCurrentStory() // Set the Story
        let choices = storyBrain.getCurrentChoices() // Get The choices
        
        choice1Button.setTitle(choices[0], for: .normal) // Set the button1 text
        choice2Button.setTitle(choices[1] , for: .normal) // Set the button2 text
        
    }

}

