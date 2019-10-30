//
//  AboutRouterProtocol.h
//  DoItForMyself
//
//  Created by Roman Doronin on 29.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#ifndef DoItForMyself_AboutRouterProtocol_h
#define DoItForMyself_AboutRouterProtocol_h

@protocol AboutViewControllerProtocolOutput;


@class UIStoryboard;


@protocol AboutRouterProtocolInput <NSObject>
@required
- (void)closeCurrentViewController;
- (void)didLoadStroyboard:(UIStoryboard *)storyboard;

@end

#endif
