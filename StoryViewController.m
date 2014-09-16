//
//  StoryViewController.m
//  Adventure2
//
//  Created by Alex Hudson on 9/15/14.
//  Copyright (c) 2014 Alex Hudson. All rights reserved.
//

#import "StoryViewController.h"

@interface StoryViewController ()
@property (strong, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation StoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(IBAction)unwindTestSegue:(UIStoryboardSegue *)segue{
    NSLog(@"Test");

    self.testLabel.text = @"Test";

}

@end
