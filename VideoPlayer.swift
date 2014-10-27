//
//  VideoPlayer.swift
//  VideoPlayerSwift
//
//  Created by pcs20 on 10/27/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

import UIKit
import MediaPlayer

class VideoPlayer: UIViewController {

    var moviePlayer : MPMoviePlayerController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playVideo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func playVideo() {
        let path = NSBundle.mainBundle().pathForResource("sample", ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        if let player = moviePlayer {
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.scalingMode = .AspectFill
            self.view.addSubview(player.view)
        }
    }
  
}
