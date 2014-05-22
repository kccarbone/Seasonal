//
//  TitleBackgroundView.m
//  Seasonal
//
//  Created by Kyle Carbone on 5/21/14.
//  Copyright (c) 2014 kcarboneapps. All rights reserved.
//

#import "TitleBackgroundView.h"

@implementation TitleBackgroundView

- (void)awakeFromNib
{
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.frame;
    gradient.locations = @[@0, @.3, @.7, @1];
    gradient.colors = @[(id)[[UIColor colorWithRed:.85 green:.95 blue:1 alpha:1] CGColor],
                        (id)[[UIColor colorWithRed:1 green:1 blue:1 alpha:1] CGColor],
                        (id)[[UIColor colorWithRed:1 green:1 blue:1 alpha:1] CGColor],
                        (id)[[UIColor colorWithRed:.85 green:.95 blue:1 alpha:1] CGColor]];
    
    [self.layer insertSublayer:gradient atIndex:0];
}

- (void)addCircle:(UIColor*)color opacity:(float)opacity radius:(int)radius start:(CGPoint)start fly1:(CGPoint)fly1 fly2:(CGPoint)fly2
{
    UIView *circle = [[UIView alloc] initWithFrame:CGRectZero];
    
    circle.layer.opacity = opacity;
    circle.layer.shadowPath = [[UIBezierPath bezierPathWithRoundedRect:CGRectMake((fly1.x - radius), (fly1.y - radius), (radius * 2), (radius * 2)) cornerRadius:radius] CGPath];
    circle.layer.shadowColor = [color CGColor];
    circle.layer.shadowRadius = 10;
    circle.layer.shadowOpacity = 1;
    circle.layer.shadowOffset = CGSizeZero;
    
    [self addSubview:circle];
    
    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"shadowPath"];
    anim.duration = 2;
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    anim.fromValue = (id)[[UIBezierPath bezierPathWithRoundedRect:CGRectMake((start.x - radius), (start.y - radius), (radius * 2), (radius * 2)) cornerRadius:radius] CGPath];
    anim.toValue = (id)[[UIBezierPath bezierPathWithRoundedRect:CGRectMake((fly1.x - radius), (fly1.y - radius), (radius * 2), (radius * 2)) cornerRadius:radius] CGPath];
    
    CABasicAnimation *anim2 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    anim2.duration = 2;
    anim2.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    anim2.fromValue = @0;
    anim2.toValue = @(opacity);
    
    [circle.layer addAnimation:anim forKey:nil];
    [circle.layer addAnimation:anim2 forKey:nil];
}


@end
