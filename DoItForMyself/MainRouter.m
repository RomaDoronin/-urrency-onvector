//
//  MainRouter.m
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "MainRouter.h"
#import "MainViewController.h"
#import "AboutViewController.h"

@implementation MainRouter

- (id)initWithView:(MainViewController *)view {
    if (self = [super init]) {
        _view = view;
    }
    
    return self;
}

- (void)pushAboutViewController {
    AboutViewController *view = [_view.storyboard instantiateViewControllerWithIdentifier:@"aboutView"];
    [_view presentViewController:view animated:YES completion:nil];
}

@end
