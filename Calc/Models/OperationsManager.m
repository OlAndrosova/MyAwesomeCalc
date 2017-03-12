//
//  OperationsManager.m
//  Calc
//
//  Created by Andrew Chersky on 3/12/17.
//  Copyright © 2017 Andrew Chersky. All rights reserved.
//

#import "OperationsManager.h"

enum operations {
    none, plus, minus, division, multiply, percent
};

@implementation OperationsManager

+(id)shared {
    static OperationsManager* singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[self alloc] init];
    });
    return singleton;
}

-(void)plus {
    _operation = plus;
}

-(void)minus {
    _operation = minus;
}

-(void)multiply {
    _operation = multiply;
}

-(void)division {
    _operation = division;
}

-(void)percent {
    _operation = percent;
}

-(void)reset {
    _accumulator = @0;
    _number = @0;
    _operation = none;
}

-(void)changeSign {
    _number = @([_number floatValue] * -1);
}

-(void)processOperation {
    switch (_operation) {
        case plus:      _accumulator = @([_accumulator floatValue] + [_number floatValue]); break;
        case minus:     _accumulator = @([_accumulator floatValue] - [_number floatValue]); break;
        case division:  _accumulator = @([_accumulator floatValue] / [_number floatValue]); break;
        case multiply:  _accumulator = @([_accumulator floatValue] * [_number floatValue]);  break;
        case percent:   _accumulator = @([_number floatValue] * 0.01); break;
        default: break;
    }
}

@end
