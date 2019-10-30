//
//  AboutInteractorProtocolOutput.h
//  DoItForMyself
//
//  Created by Roman Doronin on 29.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#ifndef DoItForMyself_AboutInteractorProtocolOutput_h
#define DoItForMyself_AboutInteractorProtocolOutput_h

@protocol AboutInteractorProtocolInput;
@protocol AboutRouterProtocolInput;
@protocol AboutViewControllerProtocolInput;


@protocol AboutInteractorProtocolOutput <NSObject>
@required
- (void)didLoadUrlServerSource:(NSString *)urlServerSource;

@end

#endif
