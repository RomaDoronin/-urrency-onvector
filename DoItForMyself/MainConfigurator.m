//
//  MainConfigurator.m
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "MainConfigurator.h"
#import "MainViewController.h"
#import "MainPresentor.h"
#import "MainInteractor.h"
#import "MainRouter.h"

@implementation MainConfigurator

- (void)configure:(MainViewController *)viewController {
    MainPresentor *presenter = [[MainPresentor alloc] initWithView:viewController];
    MainInteractor *interactor = [[MainInteractor alloc] initWithPresenter:presenter];
    MainRouter *router = [[MainRouter alloc] initWithView:viewController];
    
    viewController.presenter = presenter;
    presenter.interactor = interactor;
    presenter.router = router;
    
    presenter.currencyPickerView = viewController.currencyPickerView;
    viewController.currencyPickerView.delegate = presenter;
}

@end
