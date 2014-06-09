//
//  MyTableViewController.m
//  EditTableApp
//
//  Created by IKKO FUSHIKI on 6/7/14.
//  Copyright (c) 2014 IKKO FUSHIKI. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

@synthesize tableView, tableController, addButton, deleteButton;

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
    if (sender == deleteButton) {
        [tableController updateEditMode:tableView withBarButtonItem:deleteButton];
        
        if ([tableController isEditMode]) {
            self.navigationItem.leftBarButtonItem = nil;
        }
        else {
            self.navigationItem.leftBarButtonItem = addButton;
        }
    }
}

// When NextViewController exits, unwindToTableView is called.
- (IBAction) unwindToTableView:(UIStoryboardSegue *) segue
{
}

@end
