//
//  ViewController.h
//  EditTableApp
//
//  Created by IKKO FUSHIKI on 6/7/14.
//  Copyright (c) 2014 IKKO FUSHIKI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../../CommonTable/DwTableController.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) DwTableController *tableController;
@property (nonatomic, strong) IBOutlet UIButton *editButton;

- (IBAction) editAction:(id)sender;
- (IBAction) unwindToTableView:(UIStoryboardSegue *) segue;


@end
