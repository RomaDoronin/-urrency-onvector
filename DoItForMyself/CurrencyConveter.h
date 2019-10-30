//
//  CurrencyConveter.h
//  DoItForMyself
//
//  Created by Roman Doronin on 28.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CurrencyConveter : NSObject

- (float)convertByCrossInputValue:(NSInteger)inputValue ExchangeRate:(float)exchangeRate;

@end
