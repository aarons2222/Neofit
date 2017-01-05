//
//  LogEntry.h
//  ActivityTracker
//
//  Created by Nexttech on 21/1/15.
//  Copyright (c) 2015 Nexttech. All rights reserved.
//


#import <MetaWear/MetaWear.h>

@interface LogEntry : NSObject <NSCoding>
@property (nonatomic, readonly) NSNumber *totalRMS;
@property (nonatomic, readonly) NSDate *timestamp;
@property (nonatomic, readonly) int steps;
@property (nonatomic, readonly) float calories;

@property (nonatomic, readonly) NSString *titleText;
@property (nonatomic, readonly) NSString *valueText;

- (instancetype)initWithTotalRMS:(NSNumber *)totalRMS timestamp:(NSDate *)timestamp;
@end
