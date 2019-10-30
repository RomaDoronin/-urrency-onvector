//
//  AboutInteractor.h
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol AboutInteractorProtocolInput;
@protocol AboutInteractorProtocolOutput;


@class ServerService;


@interface AboutInteractor : NSObject <AboutInteractorProtocolInput>

@property (nonatomic, weak) id<AboutInteractorProtocolOutput> interactorOutput;
@property ServerService *serverService;

@end
