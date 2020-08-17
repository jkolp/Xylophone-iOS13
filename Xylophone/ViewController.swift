import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        sender.alpha = 0.5
        
      
        var soundName = sender.currentTitle!
        print("Start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        
            sender.alpha = 1
            print("End")
        }
        playSound(letter: soundName)
        //print(sender.title(for: .normal))
    }
    
    func playSound(letter: String) {
        let url = Bundle.main.url(forResource: letter, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
