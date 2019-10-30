//
//  DataStore.h
//  DoItForMyself
//
//  Created by Roman Doronin on 28.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataStore : NSObject

@property (nonatomic) NSString *inputCurrencyShortName;
@property (nonatomic) NSString *outputCurrencyShortName;
@property (nonatomic) float currentExchangeRate;
@property (nonatomic) NSArray *currencyArray;

@end
