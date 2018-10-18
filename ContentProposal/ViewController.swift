//
//  ViewController.swift
//  ContentProposal
//
//  Created by Jan GORMAN on 29/12/2016.
//  Copyright © 2016 Schnaub. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

  private let player = Player()
  private let videos: [Video] = {
    return [
      // streamUrls are bound to a token so are likely to be invalid.
      // See https://developer.dailymotion.com/api or use some other random video stream
      Video(streamUrl: URL(string: "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8")!,
            title: "Paris Sunset - Timelapse (Public Domain)-HD",
            description: "A timelapse shot of sunset in Paris.\nDownloaded from https://vimeo.com/147309712",
            thumbnail: UIImage(named: "timelapse")!),
      Video(streamUrl: URL(string: "https://mnmedias.api.telequebec.tv/m3u8/29880.m3u8")!,
            title: "Midnight Sun | Iceland", description: "A lovely looking midnight sun",
            thumbnail: UIImage(named: "midnight_sun")!)
    ]
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func launchVideo(_ sender: Any) {
    player.play(fromController: self, videos: videos)
  }

}
