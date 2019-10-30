//
//  MainInteractor.m
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "MainInteractor.h"
#import "DataStore.h"
#import "ServerService.h"
#import "CurrencyConveter.h"
#import "MainPresentor.h"

@implementation MainInteractor

- (id)initWithPresenter:(MainPresentor *)presenter {
    if (self = [super init]) {
        _presenter = presenter;
        _dataStore = [[DataStore alloc] init];
        _serverService = [[ServerService alloc] init];
        _currencyConveter = [[CurrencyConveter alloc] init];
        
        _dataStore.currentExchangeRate = [_serverService getExchangeRateFromServerInputCurrencyShortName:_dataStore.inputCurrencyShortName OutputCurrencyShortName:_dataStore.outputCurrencyShortName];
    }
    
    return self;
}

- (NSString *)getInputCurrencyShortName {
    return _dataStore.inputCurrencyShortName;
}

- (void)setInputCurrencyShortName:(NSString *)value {
    _dataStore.inputCurrencyShortName = value;
    
    [_presenter updateObjName:@"inputCurrencyShortName"];
    
    _dataStore.currentExchangeRate = [_serverService getExchangeRateFromServerInputCurrencyShortName:_dataStore.inputCurrencyShortName OutputCurrencyShortName:_dataStore.outputCurrencyShortName];
    [_presenter updateObjName:@"currentExchangeRate"];
}

- (NSString *)getOutputCurrencyShortName {
    return _dataStore.outputCurrencyShortName;
}

- (void)setOutputCurrencyShortName:(NSString *)value {
    _dataStore.outputCurrencyShortName = value;
    [_presenter updateObjName:@"outputCurrencyShortName"];
    
    _dataStore.currentExchangeRate = [_serverService getExchangeRateFromServerInputCurrencyShortName:_dataStore.inputCurrencyShortName OutputCurrencyShortName:_dataStore.outputCurrencyShortName];
    [_presenter updateObjName:@"currentExchangeRate"];
}

- (float)getCurrentExchangeRate {
    return _dataStore.currentExchangeRate;
}

- (NSArray *)getCurrencyArray {
    return _dataStore.currencyArray;
}


#pragma mark - Server request
- (float)convertCurrencyInputValue:(NSInteger)inputValue {
    return [_currencyConveter convertByCrossInputValue:inputValue ExchangeRate:_dataStore.currentExchangeRate];
}

@end
