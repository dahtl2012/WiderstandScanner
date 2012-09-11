//
//  SecondViewController.h
//  WiderstandScannerGit
//
//  Created by Dominik Arnhof on 07.09.12.
//  Copyright (c) 2012 HTL Hollabrunn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface SecondViewController : UIViewController

@property(nonatomic, retain) AVCaptureStillImageOutput *stillImageOutput;

@property (weak, nonatomic) IBOutlet UIView *vImagePreview;
@property (weak, nonatomic) IBOutlet UIImageView *vImage;
- (IBAction)captureNow:(id)sender;

@end
