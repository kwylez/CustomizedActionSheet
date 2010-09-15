//
//  CustomizedActionSheetViewController.h
//  CustomizedActionSheet
//
//  Created by Cory Wiles on 9/14/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomizedActionSheetViewController : UIViewController <UIActionSheetDelegate> {
  
  UIButton *present;
}

@property (nonatomic, retain) IBOutlet UIButton *present;

- (IBAction)presentSheet:(id)sender;

@end

