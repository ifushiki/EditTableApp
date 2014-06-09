//
//  ViewController.m
//  EditTableApp
//
//  Created by IKKO FUSHIKI on 6/7/14.
//  Copyright (c) 2014 IKKO FUSHIKI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize tableView, tableController, editButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    tableController = [[DwTableController alloc] initWithTableView:tableView];
    if (tableController) {
        [tableController createTableContents];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) editAction:(id)sender
{
    [tableController updateEditMode:tableView withEditButton:editButton];
}

// When NextViewController exits, unwindToTableView is called.
- (IBAction) unwindToTableView:(UIStoryboardSegue *) segue
{
}

@end
