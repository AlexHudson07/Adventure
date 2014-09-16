//
//  ViewController.m
//  Adventure2
//
//  Created by Alex Hudson on 9/15/14.
//  Copyright (c) 2014 Alex Hudson. All rights reserved.
//
//This  app allowed my to use segues, unwind segues,
//and help my understanding of UIIMages

// helpfull link http://www.absoluteripple.com/resources/using-ios-storyboard-segues

#import "ViewController.h"
#import "StoryViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *clearUpBoxesButton;
@property (strong, nonatomic) IBOutlet UIButton *eatBoxesButton;
@property (strong, nonatomic) IBOutlet UILabel *endingLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    }

-(void)viewDidAppear:(BOOL)animated{
    self.endingLabel.text = self.endingText;
    NSLog(@"Appeared");

}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    StoryViewController * vc = segue.destinationViewController;
    vc.title = sender.currentTitle;
}

-(IBAction)unwindMarriedSegue:(UIStoryboardSegue *)segue{
    NSLog(@"Married");

    self.endingText = @"Ryan Got Married";
    self.endingLabel.text = self.endingText;

}

-(IBAction)unwindStomachSegue:(UIStoryboardSegue *)segue{
    NSLog(@"Stomach");
    self.endingText = @" Ryan Got His Stomach Pumped";
    self.endingLabel.text = self.endingText;
}

@end
