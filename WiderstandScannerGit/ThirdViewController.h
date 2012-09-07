//
//  ThirdViewController.h
//  WiderstandScannerGit
//
//  Created by Klaus Bauernfeind on 07.09.12.
//  Copyright (c) 2012 HTL Hollabrunn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewEins;
- (IBAction)berechnungPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *ergebnisAnzeige;
@property (weak, nonatomic) IBOutlet UIImageView *ringEins;
@property (weak, nonatomic) IBOutlet UIImageView *ringZwei;
@property (weak, nonatomic) IBOutlet UIImageView *ringDrei;
@property (weak, nonatomic) IBOutlet UIImageView *ringVier;

@property (strong, nonatomic) NSMutableArray *dataEins;
@property (nonatomic) float erg;


-(void)setColourForRing:(NSInteger)ring AndRow:(NSInteger)row;

@end
