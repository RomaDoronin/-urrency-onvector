//
//  AboutInteractor.m
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "AboutInteractor.h"
#import "AboutInteractorProtocolOutput.h"
#import "AboutInteractorProtocolInput.h"


#import "ServerService.h"


@implementation AboutInteractor

- (void)openUrl:(NSString *)urlString {
    [_serverService openUrl:urlString];
}

- (void)loadUrlServerSource {
    [_interactorOutput didLoadUrlServerSource:_serverService.urlServerSource];
}

@end
