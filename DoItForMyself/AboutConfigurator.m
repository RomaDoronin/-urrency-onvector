//
//  AboutConfigurator.m
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "AboutConfigurator.h"

#import "AboutPresenter.h"
#import "AboutViewControllerProtocolOutput.h"
#import "AboutInteractorProtocolOutput.h"

#import "AboutInteractor.h"
#import "AboutInteractorProtocolInput.h"

#import "AboutRouter.h"
#import "AboutRouterProtocolInput.h"

#import "ServerService.h"
#import "AboutViewController.h"


@implementation AboutConfigurator

+ (void)configure:(AboutViewController *)view {
    AboutPresenter *presenter = [[AboutPresenter alloc] init];
    AboutInteractor *interactor = [[AboutInteractor alloc] init];
    AboutRouter *router = [[AboutRouter alloc] init];
    ServerService *serverService = [[ServerService alloc] init];
    
    view.viewOutput = presenter;
    presenter.interactorInput = interactor;
    presenter.routerInput = router;
    presenter.viewInput = view;
    interactor.interactorOutput = presenter;
    interactor.serverService = serverService;
    router.view = view;
}

@end
