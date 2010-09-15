//
//  CustomizedActionSheetAppDelegate.h
//  CustomizedActionSheet
//
//  Created by Cory Wiles on 9/14/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//


#import <UIKit/UIKit.h>

@class CustomizedActionSheetViewController;

@interface CustomizedActionSheetAppDelegate : NSObject <UIApplicationDelegate> {

  UIWindow *window;

  CustomizedActionSheetViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;


@property (nonatomic, retain) IBOutlet CustomizedActionSheetViewController *viewController;

@end

