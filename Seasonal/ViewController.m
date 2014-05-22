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
    
    [self.vwBackground addCircle:[UIColor grayColor] opacity:0.4 radius:30 start:CGPointMake(200, 100) fly1:CGPointMake(100, 400) fly2:CGPointMake(0, 0)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnTest:(id)sender {
    
    UITableViewController *table = [self.storyboard instantiateViewControllerWithIdentifier:@"TestTable"];
    
    [self.view addSubview:table.view];
    
    table.view.frame = CGRectMake(0, 0, 300, 500);
    
    /*[UIView animateWithDuration:1 delay:0 usingSpringWithDamping:1 initialSpringVelocity:4 options:UIViewAnimationOptionCurveLinear animations:^(){
        self.imgBackground.center = CGPointMake(self.imgBackground.center.x - 100, self.imgBackground.center.y);
    } completion:nil];*/
}
@end
