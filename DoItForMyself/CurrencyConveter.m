//
//  CurrencyConveter.m
//  DoItForMyself
//
//  Created by Roman Doronin on 28.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "CurrencyConveter.h"

@implementation CurrencyConveter

- (float)convertByCrossInputValue:(NSInteger)inputValue ExchangeRate:(float)exchangeRate {
    return inputValue * exchangeRate;
}

@end
