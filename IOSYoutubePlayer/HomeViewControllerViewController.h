//
//  HomeViewControllerViewController.h
//  IOSYoutubePlayer
//
//  Created by DpzAtMicRO on 14/03/13.
//  Copyright (c) 2013 DpzAtMicRO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "LBYouTubePlayerViewController.h"

@interface HomeViewControllerViewController : UIViewController<LBYouTubePlayerControllerDelegate>
{
    MPMoviePlayerViewController *moviePlayerViewController;
    LBYouTubePlayerViewController *lbYoutubePlayerVC;
}
- (IBAction)playVideo:(id)sender;

@end
