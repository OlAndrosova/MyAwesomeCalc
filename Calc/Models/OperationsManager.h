//
//  OperationsManager.h
//  Calc
//
//  Created by Andrew Chersky on 3/12/17.
//  Copyright © 2017 Andrew Chersky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OperationsManager : NSObject

@property (nonatomic, strong, readwrite) NSNumber* accumulator;
@property (nonatomic, strong, readwrite) NSNumber* number;
@property (nonatomic) enum operations operation;

+(id)shared;
-(void)plus;
-(void)minus;
-(void)multiply;
-(void)division;
-(void)percent;
-(void)reset;
-(void)changeSign;
-(void)processOperation;

@end
