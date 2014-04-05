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
    // Do any additional setup after loading the view from its nib.
    
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(onPan:)];
    [self.view addGestureRecognizer:panGestureRecognizer];
}

- (void)onPan:(UIPanGestureRecognizer *)panGestureRecognizer {
    
    CGPoint touchPoint = [panGestureRecognizer locationInView:self.view];
    CGPoint constrainedPoint = CGPointMake(touchPoint.x, 245);
    
    
    CGPoint velocity = [panGestureRecognizer velocityInView:self.view];
    
    if (panGestureRecognizer.state == UIGestureRecognizerStateBegan)
    {
        NSLog(@"Gesture began at: %@", NSStringFromCGPoint(constrainedPoint));
    } else if (panGestureRecognizer.state == UIGestureRecognizerStateChanged)
    {
        NSLog(@"Gesture changed: %@", NSStringFromCGPoint(constrainedPoint));
        
        panGestureRecognizer.view.center = constrainedPoint;
        //NSLog(@"Gesture velocity: %@", NSNumber(velocity));
    } else if (panGestureRecognizer.state == UIGestureRecognizerStateEnded)
    {
        NSLog(@"Gesture ended: %@", NSStringFromCGPoint(constrainedPoint));
    }
    
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
