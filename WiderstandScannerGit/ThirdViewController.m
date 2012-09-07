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
@synthesize pickerViewEins;
@synthesize ergebnisAnzeige;
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
    
    self.dataEins = [[NSMutableArray alloc] initWithObjects:@"Schwarz", @"Braun", @"Rot", @"Orange", @"Gelb", @"Grün", @"Blau", @"Violett", @"Grau", @"Weiß", @"Silber", @"Gold", nil];
}

- (void)viewDidUnload
{
    [self setPickerViewEins:nil];
    [self setErgebnisAnzeige:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
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


- (IBAction)berechnungPressed:(id)sender {
    
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
    
    /*if ((erg / 1000 >= 1) && (erg / 1000 <= 1000)) {
        k = 1;
    } else if ((erg / 1000000 >= 1) && (erg / 1000000 <= 1000000)) {
        m = 1;
    } else if ((erg / 1000000000 >= 1) && (erg / 1000000000 <= 1000000000)) {
        g = 1;
    }*/

    if ((erg / 1000 >= 1) && (erg / 1000000 <= 1)) {
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
}
@end
