//
//  JBBaseViewController.m
//  ActivityTracker
//
//  Created by Nexttech on 21/1/15.
//  Copyright (c) 2015 Nexttech. All rights reserved.
//

#import "JBBaseViewController.h"

@interface JBBaseViewController ()

@end

@implementation JBBaseViewController

#pragma mark - View Lifecycle

- (void)loadView
{
    [super loadView];
}

#pragma mark - Orientation

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

#pragma mark - Getters

- (UIBarButtonItem *)chartToggleButtonWithTarget:(id)target action:(SEL)action
{
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon-arrow.png"] style:UIBarButtonItemStylePlain target:target action:action];
    return button;
}
@end
