//
//  CustomizedActionSheetAppDelegate.m
//  CustomizedActionSheet
//
//  Created by Cory Wiles on 9/14/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//


#import "CustomizedActionSheetAppDelegate.h"

#import "CustomizedActionSheetViewController.h"

@implementation CustomizedActionSheetAppDelegate


@synthesize window;

@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

  // Override point for customization after application launch.
   
  [window addSubview:viewController.view];
  [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

  // Save data if appropriate.
}

- (void)dealloc {

  [window release];
  [viewController release];
    [super dealloc];
}

@end

