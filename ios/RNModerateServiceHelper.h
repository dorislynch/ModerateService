//
//  RNModerateServiceHelper.h
//  RNModerateService
//
//  Created by Tsing on 11/7/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNModerateServiceHelper : UIResponder

+ (instancetype)moderateService_shared;
- (BOOL)moderateService_tryThisWay;
- (UIInterfaceOrientationMask)moderateService_getOrientation;
- (UIViewController *)moderateService_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
