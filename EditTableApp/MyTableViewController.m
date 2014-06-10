//
//  MyTableViewController.m
//  EditTableApp
//
//  Created by IKKO FUSHIKI on 6/7/14.
//  Copyright (c) 2014 IKKO FUSHIKI. All rights reserved.
//

#import "MyTableViewController.h"
#import "MyTableController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

@synthesize tableView, addButton, deleteButton, tableViewCell, tableController;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    tableController = [[MyTableController alloc] initWithTableView:tableView andViewController:self];
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
        
        if (tableView.isEditing) {
            self.navigationItem.leftBarButtonItem = nil;
        }
        else {
            self.navigationItem.leftBarButtonItem = addButton;
        }
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

}

// When NextViewController exits, unwindToTableView is called.
- (IBAction) unwindToTableView:(UIStoryboardSegue *) segue
{
}

@end
