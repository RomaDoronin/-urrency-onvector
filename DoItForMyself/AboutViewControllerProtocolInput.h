//
//  AboutViewControllerProtocol.h
//  DoItForMyself
//
//  Created by Roman Doronin on 29.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#ifndef DoItForMyself_AboutViewControllerProtocol_h
#define DoItForMyself_AboutViewControllerProtocol_h

@protocol AboutViewControllerProtocolOutput;


@class UIViewController;


@protocol AboutViewControllerProtocolInput <NSObject>
@required
- (void)setUrlButtonTitle:(NSString *)title;
- (void)loadStoryboard;
- (void)presentViewController_forwarder:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion;

@end

#endif
