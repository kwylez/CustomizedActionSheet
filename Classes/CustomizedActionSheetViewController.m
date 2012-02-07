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
  
  int i=0;
  
  for (UIView* view in [actionSheet subviews]) {
    
    if ([view isKindOfClass:NSClassFromString(@"UIAlertButton")]) {
      
      view.alpha = 0;

      UIButton* bview = [[UIButton alloc ] initWithFrame:CGRectMake(5, 10 + i * 40, 310, 35)];
      
      if (i==0) {
        [bview setBackgroundImage:[UIImage imageNamed:@"BtnShowquantity.png"] forState:0];
      } else if (i==1) {
        [bview setBackgroundImage:[UIImage imageNamed:@"BtnScheduleReport.png"] forState:0];
      } else if (i==2) {
        [bview setBackgroundImage:[UIImage imageNamed:@"BtnShoppingReport.png"] forState:0];
      }
      
      [actionSheet addSubview:bview];
      i += 1;
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
