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
@synthesize dataEins;

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
    
    self.dataEins = [[NSMutableArray alloc] initWithObjects:@"Schwarz", @"Braun", @"Rot", @"Orange", @"Gelb", @"Grün", @"Blau", @"Violett", @"Grau", @"Weiß", nil];
}

- (void)viewDidUnload
{
    [self setPickerViewEins:nil];
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
    
    
}
@end
