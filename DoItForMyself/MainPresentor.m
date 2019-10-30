//
//  MainPresentor.m
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "MainPresentor.h"
#import "MainRouter.h"
#import "MainInteractor.h"
#import "MainViewController.h"

@implementation MainPresentor

- (id)initWithView:(MainViewController *)view {
    if (self = [super init]) {
        _view = view;
        _pickerCurrRow = 0;
        _currencyShortNameType = @"Input";
    }
    
    return self;
}

- (void)configureView {
    NSInteger startInputValue = 100;
    
    [self updateObjName:@"inputCurrencyShortName"];
    [self updateObjName:@"outputCurrencyShortName"];
    [self updateObjName:@"currentExchangeRate"];
    
    [_view setInputValueLabelText:[NSString stringWithFormat:@"%d", startInputValue]];
    [_view setOutputValueLabelText:[NSString stringWithFormat:@"%.2f", [_interactor convertCurrencyInputValue:startInputValue]]];
}

- (NSArray *)getCurrencyArray {
    return _interactor.currencyArray;
}


#pragma mark - Clicked reaction
- (void)aboutButtonClicked {
    [_router pushAboutViewController];
}

- (void)convertButtonClickedInputValue:(NSString *)inputValue {
    [_view setOutputValueLabelText:[NSString stringWithFormat:@"%.2f", [_interactor convertCurrencyInputValue:[inputValue integerValue]]]];
}

- (void)inputCurrencyButtonClicked {
    [_view setSubviewHidden:NO];
    _currencyShortNameType = @"Input";
}

- (void)outputCurrencyButtonClicked {
    [_view setSubviewHidden:NO];
    _currencyShortNameType = @"Output";
}

- (void)okSubviewButtonClicked {
    NSString *newCurrency = self.currencyArray[_pickerCurrRow];
    if ([_currencyShortNameType isEqualToString:@"Input"]) {
        _interactor.inputCurrencyShortName = newCurrency;
        [_view setInputCurrencyLabelText:newCurrency];
    } else {
        _interactor.outputCurrencyShortName = newCurrency;
        [_view setOutputCurrencyLabelText:newCurrency];
    }
    
    [_view setSubviewHidden:YES];
}


#pragma mark - UIPickerViewDataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.currencyArray.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.currencyArray[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    _pickerCurrRow = row;
}


#pragma mark - Update screen elements
- (void)updateObjName:(NSString *)objNum {
    NSString *inputCurrencyShortName = _interactor.inputCurrencyShortName;
    NSString *outputCurrencyShortName = _interactor.outputCurrencyShortName;
    
    if ([objNum isEqualToString:@"inputCurrencyShortName"]) {
        [_view setInputCurrencyLabelText:inputCurrencyShortName];
    } else if ([objNum isEqualToString:@"outputCurrencyShortName"]) {
        [_view setOutputCurrencyLabelText:outputCurrencyShortName];
    } else if ([objNum isEqualToString:@"currentExchangeRate"]) {
        [_view setCurrentExchangeRateLabelText:[NSString stringWithFormat:@"1 %@ = %.5f %@", inputCurrencyShortName, _interactor.currentExchangeRate, outputCurrencyShortName]];
    }
}

@end
