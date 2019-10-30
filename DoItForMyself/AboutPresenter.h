//
//  AboutPresenter.h
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol AboutViewControllerProtocolOutput;
@protocol AboutInteractorProtocolOutput;
@protocol AboutViewControllerProtocolInput;
@protocol AboutRouterProtocolInput;
@protocol AboutInteractorProtocolInput;


@interface AboutPresenter : NSObject <AboutViewControllerProtocolOutput, AboutInteractorProtocolOutput>

@property (nonatomic, weak) id<AboutViewControllerProtocolInput> viewInput;
@property (nonatomic) id<AboutRouterProtocolInput> routerInput;
@property (nonatomic) id<AboutInteractorProtocolInput> interactorInput;

@end
