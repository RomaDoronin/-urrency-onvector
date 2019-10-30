//
//  MainInteractor.h
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MainPresentor;
@class DataStore;
@class ServerService;
@class CurrencyConveter;

@interface MainInteractor : NSObject

@property (weak) MainPresentor *presenter;
@property DataStore *dataStore;
@property ServerService *serverService;
@property CurrencyConveter *currencyConveter;

@property (nonatomic, getter=getInputCurrencyShortName, setter=setInputCurrencyShortName:) NSString *inputCurrencyShortName;
@property (nonatomic, getter=getOutputCurrencyShortName, setter=setOutputCurrencyShortName:) NSString *outputCurrencyShortName;
@property (nonatomic, getter=getCurrentExchangeRate) float currentExchangeRate;
@property (nonatomic, getter=getCurrencyArray) NSArray *currencyArray;

- (id)initWithPresenter:(MainPresentor *)presenter;

- (float)convertCurrencyInputValue:(NSInteger)inputValue;


@end
