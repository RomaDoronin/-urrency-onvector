//
//  AboutPresenterProtocol.h
//  DoItForMyself
//
//  Created by Roman Doronin on 29.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#ifndef DoItForMyself_AboutPresenterProtocol_h
#define DoItForMyself_AboutPresenterProtocol_h

@class UIStoryboard;


@protocol AboutViewControllerProtocolOutput <NSObject>
@required
- (void)configureView;
- (void)closeButtonClicked;
- (void)urlButtonClicked:(NSString *)urlString;
- (void)didLoadStroyboard:(UIStoryboard *)storyboard;

@end

#endif
