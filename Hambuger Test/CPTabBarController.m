//
//  CPTabBarController.m
//  Hambuger Test
//
//  Created by David Ladowitz on 4/4/14.
//  Copyright (c) 2014 Team1. All rights reserved.
//

#import "CPTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface CPTabBarController ()

@property (weak, nonatomic) IBOutlet UIView *contenView;
@property (nonatomic, strong) NSArray *viewControllers;
- (IBAction)onFirstButton:(id)sender;
- (IBAction)onSecondButton:(id)sender;

@end

@implementation CPTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.viewControllers = @[[[FirstViewController alloc] init], [[SecondViewController alloc] init]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *firstView = ((UIViewController *)self.viewControllers[0]).view;
    firstView.frame = self.contenView.frame;
    
    UIView *secondView = ((UIViewController *)self.viewControllers[1]).view;
    secondView.frame = self.contenView.frame;
    
    [self.contenView addSubview:firstView];
    [self.contenView addSubview:secondView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onFirstButton:(id)sender {
    NSLog(@"first button");
    UIView *firstView = ((UIViewController *)self.viewControllers[0]).view;
    [self.contenView bringSubviewToFront:firstView];
}

- (IBAction)onSecondButton:(id)sender {
    NSLog(@"second button");
    UIView *secondView = ((UIViewController *)self.viewControllers[1]).view;
    [self.contenView bringSubviewToFront:secondView];
}
@end
