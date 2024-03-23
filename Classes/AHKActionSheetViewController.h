//
//  AHKActionSheetViewController.h
//  AHKActionSheetExample
//
//  Created by Arkadiusz on 09-04-14.
//  Copyright (c) 2014 Arkadiusz Holko. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHKActionSheet;

@interface AHKActionSheetViewController : UIViewController

@property (strong, nonatomic) AHKActionSheet *actionSheet;
@property (assign, nonatomic) UIStatusBarStyle AHK_preferredStatusBarStyle;
@property (assign, nonatomic) BOOL AHK_prefersStatusBarHidden;

@end
