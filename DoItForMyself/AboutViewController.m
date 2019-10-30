//
//  AboutViewController.m
//  DoItForMyself
//
//  Created by Roman Doronin on 25.10.19.
//  Copyright (c) 2019 Roman Doronin. All rights reserved.
//

#import "AboutViewController.h"
#import "AboutViewControllerProtocolOutput.h"
#import "AboutViewControllerProtocolInput.h"

#import "AboutConfigurator.h"
#import "AboutPresenter.h"

@protocol myProtocol <NSObject>
@required
- (void)doInMyProtocol;
@end

@interface myClass : NSObject <myProtocol>
- (void)doInMyClass;
@end

@implementation myClass
- (void)doInMyClass {
    NSLog(@"doInMyClass");
}

- (void)doInMyProtocol {
    NSLog(@"doInMyProtocol");
}
@end

//#####################################################################

@interface AboutViewController ()

@property (weak, nonatomic) IBOutlet UIButton *urlButton;

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [AboutConfigurator configure:self];
    [_viewOutput configureView];
}

//##################################################################### UI OUTPUT
- (IBAction)closeButtonClicked:(UIBarButtonItem *)sender {
    [_viewOutput closeButtonClicked];
}

- (IBAction)urlButtonClicked:(UIButton *)sender {
    [_viewOutput urlButtonClicked:sender.currentTitle];
}

//##################################################################### VIEW INPUT
- (void)setUrlButtonTitle:(NSString *)title {
    [_urlButton setTitle:title forState:UIControlStateNormal];
}

- (void)loadStoryboard {
    [_viewOutput didLoadStroyboard:self.storyboard];
}

- (void)presentViewController_forwarder:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion {
    [self presentViewController:viewControllerToPresent animated:flag completion:completion];
}

@end
