//
//  ServerService.h
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServerService : NSObject

@property (readonly, getter=getUrlServerSource) NSString *urlServerSource;

- (void)openUrl:(NSString *)urlString;

- (float)getExchangeRateFromServerInputCurrencyShortName:(NSString *)inputCurrencyShortName OutputCurrencyShortName:(NSString *)outputCurrencyShortName;

@end
