//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Marwan Alani on 2017-02-16.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        print("Record button pressed")
        recordingLabel.text = "Recording in progress..."
        recordButton.isEnabled = false
        stopRecordingButton.isEnabled = true
    }

    @IBAction func stopRecording(_ sender: Any) {
        print("Stop button pressed")
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordingLabel.text = "Tap to record..."
    }
}

