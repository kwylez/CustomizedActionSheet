//
//  CustomizedActionSheetViewController.m
//  CustomizedActionSheet
//
//  Created by Cory Wiles on 9/14/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "CustomizedActionSheetViewController.h"

@implementation CustomizedActionSheetViewController

@synthesize present;

- (void)viewDidLoad {
  [super viewDidLoad];
}

- (void)willPresentActionSheet:(UIActionSheet *)actionSheet {

  for (UIView* view in [actionSheet subviews]) {
    
    if ([view isKindOfClass:NSClassFromString(@"UIThreePartButton")]) {

      if ([view respondsToSelector:@selector(setBackgroundImage:)]) {

        [view setBackgroundImage:[UIImage imageNamed:@"red.png"]];

        if ([view respondsToSelector:@selector(setTitleColor:forState:)]) {
          [view setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        }
        
        if ([view respondsToSelector:@selector(setShadowColor:forState:)]) {
          [view setShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
        }
      }
    }
  }
}

- (IBAction)presentSheet:(id)sender {
  
  UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                initWithTitle:nil
                                delegate:self
                                cancelButtonTitle:@"Cancel"
                                destructiveButtonTitle:nil
                                otherButtonTitles:@"Watch A Video", @"Share with Friends", @"Save to My Favorites",nil];
  
  actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;

  [actionSheet showInView:self.view];
  
  [actionSheet release];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
  self.present = nil;
}

- (void)dealloc {
  [present release];
  [super dealloc];
}

@end
