//
//  AHKActionSheetViewController.m
//  AHKActionSheetExample
//
//  Created by Arkadiusz on 09-04-14.
//  Copyright (c) 2014 Arkadiusz Holko. All rights reserved.
//

#import "AHKActionSheetViewController.h"
#import "AHKActionSheet.h"
#import "UIWindow+AHKAdditions.h"

@interface AHKActionSheetViewController ()

@property (nonatomic) BOOL viewAlreadyAppear;

@end

@implementation AHKActionSheetViewController

#pragma mark - UIViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
    self.actionSheet.frame = self.view.bounds;
    self.actionSheet.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:self.actionSheet];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.viewAlreadyAppear = YES;
}

- (BOOL)shouldAutorotate{
    // doesn't allow autorotation after the view did appear (rotation messes up a blurred background)
    return !self.viewAlreadyAppear;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAll;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return self.AHK_preferredStatusBarStyle;
}

- (BOOL)prefersStatusBarHidden {
    return self.AHK_prefersStatusBarHidden;
}

@end
