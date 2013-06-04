Play youtube videos directly on iPhone using MPMoviePlayer


---------- IOSYoutubePlayer
----------
----------Created by DpzAtMicRO on 14/03/13.

IOSYoutubePlayer allows you to play youtube videos directly on your device using MPMoviePlayer.
MPMoviePlayer 

IOSYoutubePlayer

About
IOSYoutubePlayer allows you to play youtube videos directly on iOS device using MPMoviePlayerController. 
It just loads the HTML code of YouTube's mobile website and looks for the data in the script tag. IOSYoutubePlayer doesn't use a UIWebView , which is a common practice seen in most youtube players for iOS.
Installation
  1.	Add the IOSYoutubePlayer folder into your project.
	2.	Import the MediaPlayer.framework.
	3.	Import LBYouTubePlayerViewController.h to the view controller from which you want to make the call to play video.
	4.	If you are using ARC, handle the issue with JSONKit.m , disable ARC.
	
Example
// initiate the call:

LBYouTubePlayerViewController *lbYoutubePlayerVC = [[LBYouTubePlayerViewController alloc]initWithYouTubeURL:[NSURL URLWithString:@"http://www.youtube.com/watch?v=zkgUTQyvoZY"] quality:LBYouTubeVideoQualityLarge];
lbYoutubePlayerVC.delegate=self;

Implement the LBYouTubePlayerControllerDelegate methods:
In:
-(void)youTubePlayerViewController:(LBYouTubePlayerViewController *)controller didSuccessfullyExtractYouTubeURL:(NSURL *)videoURL
{
    MPMoviePlayerViewController *moviePlayerViewController = [[MPMoviePlayerViewController alloc]   initWithContentURL:videoURL];
    [moviePlayerViewController.moviePlayer prepareToPlay];
    [moviePlayerViewController.moviePlayer play];
    [self presentModalViewController:moviePlayerViewController animated:YES];
}

Requirements
IOSYoutubePlayer requires iOS 4 or later and is compatible with ARC environment.

License
IOSYoutubePlayer is licensed under the MIT License.

WARNING!! > To Be Noted

This can be against YouTube's ToS, unfortunately. If you do this, you can only expect your app to work for as long as YouTube is unaware of what you are doing. From docs,
developers.google.com/youtube/terms, Section 2 (Prohibitions), 10. access any portion of any YouTube audiovisual content by any means other than use of a YouTube player or other video player expressly authorized by YouTube; #7 and #8 might also be relevant
I had contacted the  YouTube API team a while back as well to ask if it would be ok for me to parse the video URL out myself; this is a quote from the reply I got: "The only mechanism supported is the iframe embed. Raw stream access is not supported by our ToS other than the low res RTSP streams we provide for feature phones"
So use it on your own risk. All that I can guarantee is it works well now, and can't promise for future reference.


Reference:
1.https://github.com/larcus94/LBYouTubeView
