//
//  ViewController.m
//  Calc
//
//  Created by Andrew Chersky on 3/12/17.
//  Copyright © 2017 Andrew Chersky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *zeroButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *oneButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *twoButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *threeButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *plusButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *fourButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *fiveButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *sixButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *sevenButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *eightButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *nineButtonOutlet;

@property (weak, nonatomic) IBOutlet UIButton *dotButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *equalButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *minusButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *multiplyButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *clearButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *changePlusMinus;
@property (weak, nonatomic) IBOutlet UIButton *percentButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *divisionButtonOutlet;

@property (weak, nonatomic) IBOutlet UILabel *labelTextOutlet;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[_zeroButtonOutlet layer] setBorderWidth:0.5f];
    [[_zeroButtonOutlet layer] setBorderColor:[UIColor blackColor].CGColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
