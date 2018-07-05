import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
    let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as Error {
            print(error)
        }
        
    }

}

