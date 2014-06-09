//
//  NextViewController.m
//  EditTableApp
//
//  Created by IKKO FUSHIKI on 6/8/14.
//  Copyright (c) 2014 IKKO FUSHIKI. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

@synthesize _cancelButton, _doneButton;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Before the nativation controll bring back the previous view, prepareForSegue is called
// to handle the necessary work.
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender == _doneButton) {
        // update the data
    }
    return;
}


@end
