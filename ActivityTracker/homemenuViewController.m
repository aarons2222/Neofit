//
//  homemenuViewController.m
//  ActivityTracker
//
//  Created by Aaron Strickland on 06/03/2015.
//  Copyright (c) 2015 Nexttech. All rights reserved.
//

#import "homemenuViewController.h"

@interface homemenuViewController ()

@end

@implementation homemenuViewController


// Share sheet

- (IBAction)shareButton:(UIBarButtonItem *)sender
{
    NSString *textToShare = @"Check out the best fitness tracker on the market!";
    NSURL *myWebsite = [NSURL URLWithString:@"http://aaronstrickland.co.uk/neofit"];
    
    NSArray *objectsToShare = @[textToShare, myWebsite];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:objectsToShare applicationActivities:nil];
    
    NSArray *excludeActivities = @[
                                   
                                   UIActivityTypePrint,
                                   UIActivityTypeAssignToContact,
                                   UIActivityTypeSaveToCameraRoll,
                                   UIActivityTypeAddToReadingList,
                                   UIActivityTypePostToVimeo];
    
    activityVC.excludedActivityTypes = excludeActivities;
    
    [self presentViewController:activityVC animated:YES completion:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
