//
//  ThirdViewController.h
//  WiderstandScannerGit
//
//  Created by Klaus Bauernfeind on 07.09.12.
//  Copyright (c) 2012 HTL Hollabrunn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ThirdViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, ADBannerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewEins;
@property (weak, nonatomic) IBOutlet UILabel *ergebnisAnzeige;
@property (weak, nonatomic) IBOutlet UILabel *minMaxLabel;
@property (weak, nonatomic) IBOutlet UIImageView *ringEins;
@property (weak, nonatomic) IBOutlet UIImageView *ringZwei;
@property (weak, nonatomic) IBOutlet UIImageView *ringDrei;
@property (weak, nonatomic) IBOutlet UIImageView *ringVier;
- (IBAction)adPressed:(id)sender;

@property (strong, nonatomic) NSMutableArray *dataEins;
@property (nonatomic) float erg;
@property (nonatomic) float ergMin;
@property (nonatomic) float ergMax;

@property (weak, nonatomic) IBOutlet ADBannerView *adView;

-(void)setColourForRing:(NSInteger)ring AndRow:(NSInteger)row;

@end
