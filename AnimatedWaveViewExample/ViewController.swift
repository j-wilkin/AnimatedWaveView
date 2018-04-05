//
//  ViewController.swift
//  AnimatedWaveViewExample
//
//  Created by Wilkin, Jason on 3/2/18.
//  Copyright © 2018 Nike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var waveView: AnimatedWaveView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
        buildWaveView()
    }
    
    func buildWaveView() {
        let animatedWaveView = AnimatedWaveView(frame: self.view.bounds)
        self.view.addSubview(animatedWaveView)
        waveView = animatedWaveView
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        waveView?.makeWaves()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }

}

