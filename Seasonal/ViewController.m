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
	
    UIView *circle = [[UIView alloc] initWithFrame:CGRectZero];
    
    circle.layer.opacity = .5;
    circle.layer.shadowPath = [[UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 50, 50) cornerRadius:25] CGPath];
    circle.layer.shadowColor = [[UIColor whiteColor] CGColor];
    circle.layer.shadowRadius = 5;
    circle.layer.shadowOpacity = 1;
    circle.layer.shadowOffset = CGSizeZero;
    
    [self.view addSubview:circle];
    
    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"shadowPath"];
    anim.duration = 2;
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    anim.fromValue = (id)[[UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 0, 0) cornerRadius:0] CGPath];
    anim.toValue = (id)[[UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 50, 50) cornerRadius:25] CGPath];
    
    CABasicAnimation *anim2 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    anim2.duration = 2;
    anim2.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    anim2.fromValue = @0;
    anim2.toValue = @0.5;
    
    [circle.layer addAnimation:anim forKey:nil];
    [circle.layer addAnimation:anim2 forKey:nil];
    
    [UIView animateWithDuration:10 delay:1 options:UIViewAnimationOptionCurveEaseInOut animations:^(){
        circle.frame = CGRectMake(100, 200, 0, 0);
    } completion:nil];
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
