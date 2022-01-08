//
//  ViewController.swift
//  TinyToyTank
//
//  Created by nju on 2022/1/6.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    var tankAnchor: TinyToyTank._TinyToyTank?
    var isActionPlaying: Bool = false
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        // 1
        super.viewDidLoad()
        // 2
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        // 3
        arView.scene.anchors.append(tankAnchor!)
        tankAnchor!.turret?.setParent(
          tankAnchor!.tank, preservingWorldTransform: true)
        tankAnchor?.actions.actionComplete.onAction = { _ in
          self.isActionPlaying = false
        }
    }
    @IBAction func canonFirePressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.cannonFire.post()
    }
    
    @IBAction func turretLeftPressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.turretLeft.post()
    }
    
    @IBAction func turretRightPressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.turretRight.post()
    }
    
    @IBAction func tankLeftPressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.tankLeft.post()
    }
    
    @IBAction func tankRightPressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.tankRight.post()
    }
    
    @IBAction func tankForwardPressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.tankForward.post()
    }
    
}
