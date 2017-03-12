//
//  ViewController.m
//  Calc
//
//  Created by Andrew Chersky on 3/12/17.
//  Copyright © 2017 Andrew Chersky. All rights reserved.
//

#import "ViewController.h"
#import "BaseButton.h"
#import "OperationsManager.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet BaseButton *zeroButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *oneButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *twoButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *threeButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *plusButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *fourButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *fiveButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *sixButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *sevenButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *eightButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *nineButtonOutlet;

@property (weak, nonatomic) IBOutlet BaseButton *dotButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *equalButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *minusButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *multiplyButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *clearButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *changePlusMinusButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *percentButtonOutlet;
@property (weak, nonatomic) IBOutlet BaseButton *divisionButtonOutlet;

@property (weak, nonatomic) IBOutlet UILabel *labelTextOutlet;


@end

@implementation ViewController {
    OperationsManager *brain;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    brain = [OperationsManager shared];
}

- (IBAction)zeroButtonPressed:(id)sender {
    [self appendStringToDisplay:@"0"];
}

- (IBAction)oneButtonPressed:(id)sender {
    [self appendStringToDisplay:@"1"];
}

- (IBAction)twoButtonPressed:(id)sender {
    [self appendStringToDisplay:@"2"];
}

- (IBAction)threeButtonPressed:(id)sender {
    [self appendStringToDisplay:@"3"];
}

- (IBAction)fourButtonPressed:(id)sender {
    [self appendStringToDisplay:@"4"];
}

- (IBAction)fiveButtonPressed:(id)sender {
    [self appendStringToDisplay:@"5"];
}

- (IBAction)sixButtonPressed:(id)sender {
    [self appendStringToDisplay:@"6"];
}

- (IBAction)sevenButtonPressed:(id)sender {
    [self appendStringToDisplay:@"7"];
}

- (IBAction)eightButtonPressed:(id)sender {
    [self appendStringToDisplay:@"8"];
}

- (IBAction)nineButtonPressed:(id)sender {
    [self appendStringToDisplay:@"9"];
}

-(void)appendStringToDisplay: (NSString*)string {
    self.labelTextOutlet.text = [[[NSString alloc] initWithString:self.labelTextOutlet.text] stringByAppendingString:string];
}

-(void)replaceStringOnDisplay: (double)doubleValue {
    self.labelTextOutlet.text = [[NSString alloc]initWithFormat:@"%f", doubleValue];
}

-(void)clearDisplay {
    self.labelTextOutlet.text = @"";
}

- (IBAction)plusButtonPressed:(id)sender {
    brain.accumulator = @([self.labelTextOutlet.text floatValue]);
    
    [self clearDisplay];
    [brain plus];
}

- (IBAction)minusButtonPressed:(id)sender {
    brain.accumulator = @([self.labelTextOutlet.text floatValue]);
    
    [self clearDisplay];
    [brain minus];
}

- (IBAction)multiplyButtomPressed:(id)sender {
    brain.accumulator = @([self.labelTextOutlet.text floatValue]);
    
    [self clearDisplay];
    [brain multiply];
}

- (IBAction)divisionButtonPressed:(id)sender {
    brain.accumulator = @([self.labelTextOutlet.text floatValue]);
    
    [self clearDisplay];
    [brain division];
}

- (IBAction)percentButtonPressed:(id)sender {
    [self clearDisplay];
}

- (IBAction)changeSignButtonPressed:(id)sender {
    [self clearDisplay];
}

- (IBAction)clearButtonPressed:(id)sender {
    [[OperationsManager shared] reset];
    self.labelTextOutlet.text = @"";
}

- (IBAction)equalButtonPressed:(id)sender {
    brain.number = @([self.labelTextOutlet.text floatValue]);
    [[OperationsManager shared] processOperation];
    self.labelTextOutlet.text = [[[OperationsManager shared]accumulator] stringValue];
}


@end
