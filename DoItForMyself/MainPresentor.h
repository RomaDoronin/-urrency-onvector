//
//  MainPresentor.h
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MainViewController;
@class MainRouter;
@class MainInteractor;

@interface MainPresentor : NSObject<UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak) MainViewController *view;
@property MainRouter *router;
@property MainInteractor *interactor;

@property (weak, nonatomic) UIPickerView *currencyPickerView;
@property (nonatomic, getter=getCurrencyArray) NSArray *currencyArray;

@property NSUInteger pickerCurrRow;
@property NSString *currencyShortNameType;

- (id)initWithView:(MainViewController *)view;
- (void)configureView;

- (void)aboutButtonClicked;
- (void)inputCurrencyButtonClicked;
- (void)outputCurrencyButtonClicked;
- (void)okSubviewButtonClicked;
- (void)convertButtonClickedInputValue:(NSString *)inputValue;

- (void)updateObjName:(NSString *)objNum;

@end
