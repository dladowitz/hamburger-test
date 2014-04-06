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
    
    // Gets distance moved x,y
    CGPoint translation = [panGestureRecognizer translationInView:self.view.superview];
    
    // sets the center as old center plus amount moved in each direction
    panGestureRecognizer.view.center = CGPointMake(panGestureRecognizer.view.center.x + translation.x, 284);
    
    // Prevents view from moving offscreen to the left
    if (panGestureRecognizer.view.center.x < 160) {
        panGestureRecognizer.view.center = CGPointMake(160, 284);
        
    // Prevents view from moving too far to the right
    } else if (panGestureRecognizer.view.center.x > 450) {
        panGestureRecognizer.view.center = CGPointMake(450, 284);
    }
    
    // Resets the translation property for next use
    [panGestureRecognizer setTranslation:CGPointMake(0, 0) inView:self.view];

    
//    NSLog(@"%@", translation);
//    CGPoint touchPoint = [panGestureRecognizer locationInView:self.view.superview];
//    CGPoint velocity = [panGestureRecognizer velocityInView:self.view.superview];
//    NSLog(@"Gesture: %@", NSStringFromCGPoint(touchPoint));
//    NSLog(@"Velocity: %@", NSStringFromCGPoint(velocity));

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
