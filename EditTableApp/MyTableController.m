//
//  MyTableController.m
//  EditTableApp
//
//  Created by IKKO FUSHIKI on 6/9/14.
//  Copyright (c) 2014 IKKO FUSHIKI. All rights reserved.
//

#import "MyTableController.h"
#import "NextViewController.h"

@implementation MyTableController

// didSelectRowAtIndexPath is called when a TableViewCell is selected.
// prepareForSeque is not called.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //   UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    
    if (self.viewController) {
        UIStoryboard *storyboard = self.viewController.storyboard;
        if (storyboard) {
            NextViewController * nextController = [storyboard instantiateViewControllerWithIdentifier:@"NextViewController"];
            [self.viewController.navigationController pushViewController:nextController animated:YES];
        }
    }
}
@end
