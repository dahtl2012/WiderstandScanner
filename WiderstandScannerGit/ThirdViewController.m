//
//  ThirdViewController.m
//  WiderstandScannerGit
//
//  Created by Klaus Bauernfeind on 07.09.12.
//  Copyright (c) 2012 HTL Hollabrunn. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController
@synthesize adView;
@synthesize pickerViewEins;
@synthesize ergebnisAnzeige;
@synthesize ringEins;
@synthesize ringZwei;
@synthesize ringDrei;
@synthesize ringVier;
@synthesize dataEins;
@synthesize erg;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.adView.delegate = self;
    
    //NSString *deviceType = [UIDevice currentDevice].model;
    
    //if([deviceType isEqualToString:@"iPad"]) {
    self.dataEins = [[NSMutableArray alloc] initWithObjects:NSLocalizedString(@"BLACK", nil),
                     NSLocalizedString(@"BROWN", nil),
                     NSLocalizedString(@"RED", nil),
                     NSLocalizedString(@"ORANGE", nil),
                     NSLocalizedString(@"YELLOW", nil),
                     NSLocalizedString(@"GREEN", nil),
                     NSLocalizedString(@"BLUE", nil),
                     NSLocalizedString(@"PURPLE", nil),
                     NSLocalizedString(@"GRAY", nil),
                     NSLocalizedString(@"WHITE", nil),
                     NSLocalizedString(@"SILVER", nil),
                     NSLocalizedString(@"GOLD", nil), nil];
    //}
}

- (void)viewDidUnload
{
    [self setPickerViewEins:nil];
    [self setErgebnisAnzeige:nil];
    [self setRingEins:nil];
    [self setRingZwei:nil];
    [self setRingDrei:nil];
    [self setRingVier:nil];
    [self setAdView:nil];
    [self setMinMaxLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
    //return (interfaceOrientation);
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 4;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return self.dataEins.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return [self.dataEins objectAtIndex:row];
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    /*if (component == 0) {
     NSLog(@"0");
     }
     if (component == 1) {
     NSLog(@"1");
     }
     if (component == 2) {
     NSLog(@"2");
     }
     if (component == 3) {
     NSLog(@"3");
     }*/
    
    NSInteger null, eins, zwei, drei;
    
    null = [self.pickerViewEins selectedRowInComponent:0];
    eins = [self.pickerViewEins selectedRowInComponent:1];
    zwei = [self.pickerViewEins selectedRowInComponent:2];
    drei = [self.pickerViewEins selectedRowInComponent:3];
    
    [self setColourForRing:0 AndRow:null];
    [self setColourForRing:1 AndRow:eins];
    [self setColourForRing:2 AndRow:zwei];
    [self setColourForRing:3 AndRow:drei];
    
    [self calculateAndDisplay];
    
}

-(void)setColourForRing:(NSInteger)ring AndRow:(NSInteger)row {
    
    switch (row) {
        case 0:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor blackColor];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor blackColor];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor blackColor];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor blackColor];
                    break;
                    
                default:
                    break;
            }
            break;
        case 1:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor brownColor];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor brownColor];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor brownColor];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor brownColor];
                    break;
                    
                default:
                    break;
            }
            break;
        case 2:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor redColor];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor redColor];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor redColor];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor redColor];
                    break;
                    
                default:
                    break;
            }
            
            break;
        case 3:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor orangeColor];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor orangeColor];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor orangeColor];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor orangeColor];
                    break;
                    
                default:
                    break;
            }
            break;
        case 4:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor yellowColor];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor yellowColor];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor yellowColor];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor yellowColor];
                    break;
                    
                default:
                    break;
            }
            break;
        case 5:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor greenColor];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor greenColor];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor greenColor];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor greenColor];
                    break;
                    
                default:
                    break;
            }
            break;
        case 6:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor blueColor];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor blueColor];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor blueColor];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor blueColor];
                    break;
                    
                default:
                    break;
            }
            break;
        case 7:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor purpleColor];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor purpleColor];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor purpleColor];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor purpleColor];
                    break;
                    
                default:
                    break;
            }
            break;
        case 8:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor grayColor];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor grayColor];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor grayColor];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor grayColor];
                    break;
                    
                    
                default:
                    break;
            }
            break;
        case 9:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor whiteColor];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor whiteColor];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor whiteColor];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor whiteColor];
                    break;
                    
                default:
                    break;
            }
            break;
        case 10:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor colorWithRed:229.0/255.0 green:229.0/255.0 blue:229.0/255.0 alpha:1.0];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor colorWithRed:229.0/255.0 green:229.0/255.0 blue:229.0/255.0 alpha:1.0];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor colorWithRed:229.0/255.0 green:229.0/255.0 blue:229.0/255.0 alpha:1.0];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor colorWithRed:229.0/255.0 green:229.0/255.0 blue:229.0/255.0 alpha:1.0];
                    break;
                    
                default:
                    break;
            }
            break;
        case 11:
            switch (ring) {
                case 0:
                    self.ringEins.backgroundColor = [UIColor colorWithRed:204.0/255.0 green:153.0/255.0 blue:51.0/255.0 alpha:1.0];
                    break;
                case 1:
                    self.ringZwei.backgroundColor = [UIColor colorWithRed:204.0/255.0 green:153.0/255.0 blue:51.0/255.0 alpha:1.0];
                    break;
                case 2:
                    self.ringDrei.backgroundColor = [UIColor colorWithRed:204.0/255.0 green:153.0/255.0 blue:51.0/255.0 alpha:1.0];
                    break;
                case 3:
                    self.ringVier.backgroundColor = [UIColor colorWithRed:204.0/255.0 green:153.0/255.0 blue:51.0/255.0 alpha:1.0];
                    break;
                    
                default:
                    break;
            }
            break;
        default:
            break;
            
    }
    
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner {
    
    self.adView.hidden = NO;
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    
    self.adView.hidden = YES;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row
          forComponent:(NSInteger)component reusingView:(UIView *)view {
    UILabel *retval = (id)view;
    if (!retval) {
        retval= [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, [pickerView rowSizeForComponent:component].width, [pickerView rowSizeForComponent:component].height)];
    }
    retval.text = [self.dataEins objectAtIndex:row];
    retval.font = [UIFont systemFontOfSize:19];
    //retval.backgroundColor = nil;
    
    switch (row) {
        case 0:
            retval.backgroundColor = [UIColor blackColor];
            retval.textColor = [UIColor whiteColor];
            break;
            
        case 1:
            retval.backgroundColor = [UIColor brownColor];
            retval.textColor = [UIColor whiteColor];
            break;
            
        case 2:
            retval.backgroundColor = [UIColor redColor];
            retval.textColor = [UIColor whiteColor];
            break;
            
        case 3:
            retval.backgroundColor = [UIColor orangeColor];
            retval.textColor = [UIColor whiteColor];
            break;
            
        case 4:
            retval.backgroundColor = [UIColor yellowColor];
            retval.textColor = [UIColor grayColor];
            break;
            
        case 5:
            retval.backgroundColor = [UIColor greenColor];
            retval.textColor = [UIColor grayColor];
            break;
            
        case 6:
            retval.backgroundColor = [UIColor blueColor];
            retval.textColor = [UIColor whiteColor];
            break;
            
        case 7:
            retval.backgroundColor = [UIColor purpleColor];
            retval.textColor = [UIColor whiteColor];
            break;
            
        case 8:
            retval.backgroundColor = [UIColor grayColor];
            retval.textColor = [UIColor blackColor];
            break;
            
        case 9:
            retval.backgroundColor = [UIColor whiteColor];
            retval.textColor = [UIColor blackColor];
            break;
            
        case 10:
            retval.backgroundColor = [UIColor colorWithRed:229.0/255.0 green:229.0/255.0 blue:229.0/255.0 alpha:1.0];
            retval.textColor = [UIColor blackColor];
            break;
            
        case 11:
            retval.backgroundColor = [UIColor colorWithRed:204.0/255.0 green:153.0/255.0 blue:51.0/255.0 alpha:1.0];
            retval.textColor = [UIColor blackColor];
            break;
            
        default:
            break;
    }
    
    return retval;
}


-(void)calculateAndDisplay {
    
    NSInteger null, eins, zwei, drei, k, m, g;
    float a, b, c, d;
    
    null = [self.pickerViewEins selectedRowInComponent:0];
    eins = [self.pickerViewEins selectedRowInComponent:1];
    zwei = [self.pickerViewEins selectedRowInComponent:2];
    drei = [self.pickerViewEins selectedRowInComponent:3];
    
    switch (null) {
        case 0:
            a = 0;
            break;
        case 1:
            a = 1;
            break;
        case 2:
            a = 2;
            break;
        case 3:
            a = 3;
            break;
        case 4:
            a = 4;
            break;
        case 5:
            a = 5;
            break;
        case 6:
            a = 6;
            break;
        case 7:
            a = 7;
            break;
        case 8:
            a = 8;
            break;
        case 9:
            a = 9;
            break;
            
        default:
            break;
    }
    switch (eins) {
        case 0:
            b = 0;
            break;
        case 1:
            b = 1;
            break;
        case 2:
            b = 2;
            break;
        case 3:
            b = 3;
            break;
        case 4:
            b = 4;
            break;
        case 5:
            b = 5;
            break;
        case 6:
            b = 6;
            break;
        case 7:
            b = 7;
            break;
        case 8:
            b = 8;
            break;
        case 9:
            b = 9;
            break;
            
        default:
            break;
    }
    switch (zwei) {
        case 0:
            c = 1;
            break;
        case 1:
            c = 10;
            break;
        case 2:
            c = 100;
            break;
        case 3:
            c = 1000;
            break;
        case 4:
            c = 10000;
            break;
        case 5:
            c = 100000;
            break;
        case 6:
            c = 1000000;
            break;
        case 7:
            c = 10000000;
            break;
        case 8:
            c = 100000000;
            break;
        case 9:
            c = 1000000000;
            break;
        case 10:
            c = 0.01;
            break;
        case 11:
            c = 0.1;
            break;
            
        default:
            break;
    }
    switch (drei) {
        case 0:
            d = 0;
            break;
        case 1:
            d = 1;
            break;
        case 2:
            d = 2;
            break;
        case 3:
            d = 0;
            break;
        case 4:
            d = 0;
            break;
        case 5:
            d = 0.5;
            break;
        case 6:
            d = 0.25;
            break;
        case 7:
            d = 0.1;
            break;
        case 8:
            d = 0.05;
            break;
        case 9:
            d = 0;
            break;
        case 10:
            d = 10;
            break;
        case 11:
            d = 5;
            break;
            
        default:
            break;
    }
    
    
    self.erg = (a*10)+b;
    self.erg = erg*c;
    
    
    if ((erg / 1000 <= 1)) {
        k = 0;
        m = 0;
        g = 0;
    } else if ((erg / 1000 >= 1) && (erg / 1000000 <= 1)) {
        k = 1;
    } else if ((erg / 1000000 >= 1) && (erg / 1000000000 <= 1)) {
        m = 1;
    } else if ((erg / 1000000000 >= 1)) {
        g = 1;
    }
    
    if (k == 1) {
        self.ergebnisAnzeige.text = [NSString stringWithFormat:@"%.2fkΩ +/- %.2f%%", erg/1000, d];
    }
    else if (m == 1) {
        self.ergebnisAnzeige.text = [NSString stringWithFormat:@"%.2fMΩ +/- %.2f%%", erg/1000000, d];
    }
    else if (g == 1) {
        self.ergebnisAnzeige.text = [NSString stringWithFormat:@"%.2fGΩ +/- %.2f%%", erg/1000000000, d];
    }
    else {
        
        self.ergebnisAnzeige.text = [NSString stringWithFormat:@"%.2fΩ +/- %.2f%%", erg, d];
    }
    
    k = 0;
    m = 0;
    g = 0;
    
    if (d != 0) {
        d = d / 100;
        float hilf = erg * d;
        self.ergMax = erg + hilf;
        self.ergMin  = erg - hilf;
        
        if ((erg / 1000 <= 1)) {
            k = 0;
            m = 0;
            g = 0;
        } else if ((erg / 1000 >= 1) && (erg / 1000000 <= 1)) {
            k = 1;
        } else if ((erg / 1000000 >= 1) && (erg / 1000000000 <= 1)) {
            m = 1;
        } else if ((erg / 1000000000 >= 1)) {
            g = 1;
        }
        
        if (k == 1) {
            self.minMaxLabel.text = [NSString stringWithFormat:@"Min.:%.2fkΩ  Max.:%.2fkΩ", self.ergMin/1000, self.ergMax/1000];
        }
        else if (m == 1) {
            self.minMaxLabel.text = [NSString stringWithFormat:@"Min.:%.2fMΩ  Max.:%.2fMΩ", self.ergMin/1000000, self.ergMax/1000000];
        }
        else if (g == 1) {
            self.minMaxLabel.text = [NSString stringWithFormat:@"Min.:%.2fGΩ  Max.:%.2fGΩ", self.ergMin/1000000000, self.ergMax/1000000000];
        }
        else {
            
            self.minMaxLabel.text = [NSString stringWithFormat:@"Min.:%.2fΩ  Max.:%.2fΩ", self.ergMin, self.ergMax];
        }
        
        k = 0;
        m = 0;
        g = 0;
        
        
        //self.minMaxLabel.text = [NSString stringWithFormat:@"Max.:%.2f  Min.:%.2f", self.ergMax, self.ergMin];
    } else {
        self.minMaxLabel.text = [NSString stringWithFormat:@""];
    }
}

- (IBAction)adPressed:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.htl-hl.ac.at/cms/index.php?id=el"]];
}
@end
