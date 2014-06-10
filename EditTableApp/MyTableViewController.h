//
//  MyTableViewController.h
//  EditTableApp
//
//  Created by IKKO FUSHIKI on 6/7/14.
//  Copyright (c) 2014 IKKO FUSHIKI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTableController.h"

@interface MyTableViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) MyTableController *tableController;
@property (nonatomic, strong) IBOutlet UIBarButtonItem *addButton;
@property (nonatomic, strong) IBOutlet UIBarButtonItem *deleteButton;
@property (nonatomic, strong) IBOutlet UITableViewCell *tableViewCell;


- (IBAction) editAction:(id)sender;
- (IBAction) unwindToTableView:(UIStoryboardSegue *) segue;


@end
