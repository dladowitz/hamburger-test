//
//  SecondViewController.m
//  Hambuger Test
//
//  Created by David Ladowitz on 4/4/14.
//  Copyright (c) 2014 Team1. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(onPan:)];
    [self.view addGestureRecognizer:panGestureRecognizer];
}

- (void)onPan:(UIPanGestureRecognizer *)panGestureRecognizer {
    
    CGPoint touchPoint = [panGestureRecognizer locationInView:self.view.superview];
    CGPoint velocity = [panGestureRecognizer velocityInView:self.view.superview];
    
    CGPoint constrainedPoint = CGPointMake(touchPoint.x, 245);
    
    NSLog(@"Gesture: %@", NSStringFromCGPoint(touchPoint));
    NSLog(@"Velocity: %@", NSStringFromCGPoint(velocity));

    panGestureRecognizer.view.center = constrainedPoint;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
