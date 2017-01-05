//
//  JBBaseChartViewController.h
//  ActivityTracker
//
//  Created by Nexttech on 21/1/15.
//  Copyright (c) 2015 Nexttech. All rights reserved.
//

#import "JBBaseViewController.h"

// Views
#import "JBChartTooltipView.h"
#import "JBChartView.h"

@interface JBBaseChartViewController : JBBaseViewController

@property (nonatomic, strong, readonly) JBChartTooltipView *tooltipView;
@property (nonatomic, assign) BOOL tooltipVisible;

// Setters
- (void)setTooltipVisible:(BOOL)tooltipVisible animated:(BOOL)animated atTouchPoint:(CGPoint)touchPoint;
- (void)setTooltipVisible:(BOOL)tooltipVisible animated:(BOOL)animated;

// Getters
- (JBChartView *)chartView; // subclasses to return chart instance for tooltip functionality

@end
