//
//  HomeViewControllerViewController.m
//  IOSYoutubePlayer
//
//  Created by DpzAtMicRO on 14/03/13.
//  Copyright (c) 2013 DpzAtMicRO. All rights reserved.
//

#import "HomeViewControllerViewController.h"

@interface HomeViewControllerViewController ()

@end

@implementation HomeViewControllerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIButtonActions
- (IBAction)playVideo:(id)sender
{
//    initialize LBYouTubePlayerViewController here and pass the url 
    lbYoutubePlayerVC = [[LBYouTubePlayerViewController alloc]initWithYouTubeURL:[NSURL URLWithString:@"http://www.youtube.com/watch?v=zkgUTQyvoZY"] quality:LBYouTubeVideoQualityLarge];
    lbYoutubePlayerVC.delegate=self;
}

#pragma mark - LBYouTubePlayerControllerDelegate methods

-(void)youTubePlayerViewController:(LBYouTubePlayerViewController *)controller didSuccessfullyExtractYouTubeURL:(NSURL *)videoURL
{
    moviePlayerViewController = [[MPMoviePlayerViewController alloc] initWithContentURL:videoURL];
    [moviePlayerViewController.moviePlayer prepareToPlay];
    [moviePlayerViewController.moviePlayer play];
    [self presentModalViewController:moviePlayerViewController animated:YES];
}

-(void)youTubePlayerViewController:(LBYouTubePlayerViewController *)controller failedExtractingYouTubeURLWithError:(NSError *)error
{
    NSLog(@"URL extracting failed with error: %@", error);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ERROR" message:@"failed" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

@end
