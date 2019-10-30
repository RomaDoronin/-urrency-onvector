//
//  AboutInteractorProtocol.h
//  DoItForMyself
//
//  Created by Roman Doronin on 29.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#ifndef DoItForMyself_AboutInteractorProtocol_h
#define DoItForMyself_AboutInteractorProtocol_h

@protocol AboutInteractorProtocolOutput;


@protocol AboutInteractorProtocolInput <NSObject>
@required
- (void)openUrl:(NSString *)urlString;
- (void)loadUrlServerSource;

@end

#endif
