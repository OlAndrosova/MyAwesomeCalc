
//
//  BaseButton.m
//  Calc
//
//  Created by Andrew Chersky on 3/12/17.
//  Copyright © 2017 Andrew Chersky. All rights reserved.
//

#import "BaseButton.h"
#import "OperationsManager.h"

@implementation BaseButton

-(void)awakeFromNib {
    [super awakeFromNib];
    
    [[self layer] setBorderWidth:0.2f];
    [[self layer] setBorderColor:[UIColor blackColor].CGColor];
}

@end
