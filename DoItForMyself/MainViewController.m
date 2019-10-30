//
//  MainViewController.m
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "MainViewController.h"
#import "AboutViewController.h"
#import "MainConfigurator.h"
#import "MainPresentor.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *aboutButton;
@property (weak, nonatomic) IBOutlet UITextField *inputValueTextField;
@property (weak, nonatomic) IBOutlet UIButton *inputCurrencyButton;
@property (weak, nonatomic) IBOutlet UILabel *outputValueLabel;
@property (weak, nonatomic) IBOutlet UIButton *outoutCurrencyButton;
@property (weak, nonatomic) IBOutlet UILabel *currentExchangeRateLabel;
@property (weak, nonatomic) IBOutlet UIView *subView;

// ...
@property (weak, nonatomic) IBOutlet UILabel *labelCurrentExchangeRate;
@property (weak, nonatomic) IBOutlet UILabel *labelOutputValue;
@property (weak, nonatomic) IBOutlet UITextField *textFieldInputValue;
// ...

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _configurator = [[MainConfigurator alloc] init];
    [_configurator configure:self];
    
    [_presenter configureView];
}


#pragma mark - Inderface
- (void)setInputCurrencyLabelText:(NSString *)value {
    [_inputCurrencyButton setTitle:value forState:UIControlStateNormal];
}

- (void)setOutputValueLabelText:(NSString *)value {
    _outputValueLabel.text = value;
}

- (void)setOutputCurrencyLabelText:(NSString *)value {
    [_outoutCurrencyButton setTitle:value forState:UIControlStateNormal];
}

- (void)setCurrentExchangeRateLabelText:(NSString *)value {
    _currentExchangeRateLabel.text = value;
}

- (void)setInputValueLabelText:(NSString *)value {
    _inputValueTextField.text = value;
}

- (void)setSubviewHidden:(BOOL)hidden {
    hidden ? [_subView setValue:@YES forKeyPath:@"hidden"] : [_subView setValue:@NO forKeyPath:@"hidden"];
}


#pragma mark - Actions
- (IBAction)aboutButtonClicked:(UIBarButtonItem *)sender {
    [_presenter aboutButtonClicked];
}

- (IBAction)convertButtonClicked:(UIButton *)sender {
    [_presenter convertButtonClickedInputValue:_inputValueTextField.text];
}

- (IBAction)outputCurrencyButtonClicked:(UIButton *)sender {
    [_presenter inputCurrencyButtonClicked];
}

- (IBAction)realOutputCurrencyButtonClicked:(UIButton *)sender {
    [_presenter outputCurrencyButtonClicked];
}

- (IBAction)okSubviewButtonClicked:(UIButton *)sender {
    [_presenter okSubviewButtonClicked];
}

@end
