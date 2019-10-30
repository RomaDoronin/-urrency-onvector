//
//  DataStore.m
//  DoItForMyself
//
//  Created by Roman Doronin on 28.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "DataStore.h"

@implementation DataStore

- (id)init {
    if (self = [super init]) {
        _inputCurrencyShortName = @"USD";
        _outputCurrencyShortName = @"EUR";
        _currentExchangeRate = 1;
        _currencyArray = @[@"USD", @"EUR", @"RUB"];
    }
    
    return self;
}

@end
