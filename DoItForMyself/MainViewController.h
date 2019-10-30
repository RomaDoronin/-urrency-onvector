//
//  MainViewController.h
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainConfigurator;
@class MainPresentor;

@interface MainViewController : UIViewController

@property MainConfigurator *configurator;
@property MainPresentor *presenter;
@property (weak, nonatomic) IBOutlet UIPickerView *currencyPickerView;

- (void)setInputCurrencyLabelText:(NSString *)value;
- (void)setOutputValueLabelText:(NSString *)value;
- (void)setOutputCurrencyLabelText:(NSString *)value;
- (void)setCurrentExchangeRateLabelText:(NSString *)value;
- (void)setInputValueLabelText:(NSString *)value;
- (void)setSubviewHidden:(BOOL)hidden;

@end
