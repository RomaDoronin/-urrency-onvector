//
//  AboutPresenter.m
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "AboutPresenter.h"

#import "AboutViewControllerProtocolOutput.h"
#import "AboutInteractorProtocolOutput.h"
#import "AboutViewControllerProtocolInput.h"
#import "AboutRouterProtocolInput.h"
#import "AboutInteractorProtocolInput.h"


@implementation AboutPresenter

//##################################################################### VIEW OUTPUT
- (void)configureView {
    [_interactorInput loadUrlServerSource];
}

- (void)closeButtonClicked {
    [_routerInput closeCurrentViewController];
}

- (void)urlButtonClicked:(NSString *)urlString {
    if (urlString.length) {
        [_interactorInput openUrl:urlString];
    }
}

- (void)didLoadStroyboard:(UIStoryboard *)storyboard {
    [_routerInput didLoadStroyboard:storyboard];
}

//##################################################################### INTERACTOR OUTPUT
- (void)didLoadUrlServerSource:(NSString *)urlServerSource {
    [_viewInput setUrlButtonTitle:urlServerSource];
}

@end
