//
//  ServerService.m
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "ServerService.h"
#import <UIKit/UIKit.h>

@implementation ServerService

- (NSString *)getUrlServerSource {
    return @"https://www.google.ru";
}

- (void)openUrl:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    [[UIApplication sharedApplication] openURL:url];
}

- (float)getExchangeRateFromServerInputCurrencyShortName:(NSString *)inputCurrencyShortName OutputCurrencyShortName:(NSString *)outputCurrencyShortName {
    
    // Mock
    if (inputCurrencyShortName == outputCurrencyShortName) {
        return 1;
    }
    else {
        NSDictionary *dictEur = @{@"USD" : @1.11201, @"RUB" : @71.12002};
        NSDictionary *dictUsd = @{@"EUR" : @0.93012, @"RUB" : @64.01023};
        NSDictionary *dictRub = @{@"EUR" : @0.01406, @"USD" : @0.01562};
        NSDictionary *dictCurrency = @{@"EUR" : dictEur, @"USD" : dictUsd, @"RUB" : dictRub};
    
        return [dictCurrency[inputCurrencyShortName][outputCurrencyShortName] floatValue];
    }
}

@end
