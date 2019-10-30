//
//  AboutViewController.h
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol AboutViewControllerProtocolOutput;
@protocol AboutViewControllerProtocolInput;


@interface AboutViewController : UIViewController <AboutViewControllerProtocolInput>

@property (nonatomic) id<AboutViewControllerProtocolOutput> viewOutput;

@end
