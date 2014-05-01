//
//  ViewController.m
//  Seasonal
//
//  Created by Kyle Carbone on 4/30/14.
//  Copyright (c) 2014 kcarboneapps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Hello there
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnTest:(id)sender {
    
    [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:1 initialSpringVelocity:4 options:UIViewAnimationOptionCurveLinear animations:^(){
        self.imgBackground.center = CGPointMake(self.imgBackground.center.x - 100, self.imgBackground.center.y);
    } completion:nil];
}
@end
