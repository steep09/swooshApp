//
//  LeagueVC.swift
//  appSwoosh
//
//  Created by Stephenson Ang on 06/05/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func onMenTapped(_ sender: Any) {
        selectLeague(leagueType: "men")
    }
    
    @IBAction func onWoemTapped(_ sender: Any) {
        selectLeague(leagueType: "women")
    }
    
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC  {
            skillVC.player = player
        }
    }
    
}
