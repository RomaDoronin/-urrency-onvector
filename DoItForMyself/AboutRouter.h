//
//  AboutRouter.h
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol AboutRouterProtocolInput;
@protocol AboutViewControllerProtocolInput;


@interface AboutRouter : NSObject <AboutRouterProtocolInput>

@property (nonatomic, weak) id<AboutViewControllerProtocolInput> view;

@end
