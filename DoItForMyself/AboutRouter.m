//
//  AboutRouter.m
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "AboutRouter.h"

#import "AboutRouterProtocolInput.h"
#import "AboutViewControllerProtocolInput.h"

#import "MainViewController.h"


@implementation AboutRouter

- (void)closeCurrentViewController {
    [_view loadStoryboard];
}

- (void)didLoadStroyboard:(UIStoryboard *)storyboard {
    MainViewController *view = [storyboard instantiateViewControllerWithIdentifier:@"mainView"];
    [_view presentViewController_forwarder:view animated:YES completion:nil];
}

@end
