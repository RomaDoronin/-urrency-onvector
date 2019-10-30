//
//  MainRouter.h
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MainViewController;

@interface MainRouter : NSObject

@property (weak) MainViewController *view;

- (id)initWithView:(MainViewController *)view;
- (void)pushAboutViewController;

@end
