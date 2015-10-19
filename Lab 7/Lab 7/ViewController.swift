//
//  ViewController.swift
//  Lab 7
//
//  Created by Sarah Egener on 10/19/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    
    var audioPlayer: AVAudioPlayer?
    var audioRecorder: AVAudioRecorder?
    let fileName = "audio.caf"
    
    @IBAction func recordAudio(sender: UIButton) {
        if audioRecorder?.recording == false{
            playButton.enabled = false
            stopButton.enabled = true
            audioRecorder?.record()
        }
    }
    

    @IBAction func stopAudio(sender: UIButton) {
        stopButton.enabled = false
        playButton.enabled = true
        recordButton.enabled = true
        if audioRecorder?.recording == true {
            audioRecorder?.stop()
        } else {
            audioPlayer?.stop()
        }
    }
    
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully
        flag: Bool) {
            recordButton.enabled = true
            stopButton.enabled = false
    }
    
    
    
    @IBAction func playAudio(sender: UIButton) {
        if audioRecorder?.recording == false{
            stopButton.enabled = true
            recordButton.enabled = false
            var error: NSError?
            
            //create the AVAudioPlayer instance
            audioPlayer=AVAudioPlayer(contentsOfURL: audioRecorder?.url,
                error: &error)
            
            //test for error
            if let err = error {
                println("AVAudioPlayer error: \(err.localizedDescription)")
            } else {
                audioPlayer?.delegate=self //sets the delegate
                audioPlayer?.play() //plays audio file
            }
        }
    }
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.enabled = false;
        stopButton.enabled = false;
        let dirPath =
        NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory,
            NSSearchPathDomainMask.UserDomainMask, true)
        let docDir = dirPath[0] as! String //documents directory
        let audioFilePath = docDir.stringByAppendingPathComponent(fileName)
        let audioFileURL = NSURL(fileURLWithPath: audioFilePath)
        let recordSettings = [AVEncoderAudioQualityKey:
            AVAudioQuality.Min.rawValue, AVEncoderBitRateKey: 16, AVNumberOfChannelsKey:
            2, AVSampleRateKey: 44100.0]
        var error : NSError?
        audioRecorder = AVAudioRecorder(URL: audioFileURL, settings:
            recordSettings as [NSObject : AnyObject], error: &error)
        if let err = error {
            println("AVAudioRecorder error: \(err.localizedDescription)")
        } else { //no error
            audioRecorder?.delegate = self
            audioRecorder?.prepareToRecord()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

