//
//  RNModerateServiceHelper.m
//  RNModerateService
//
//  Created by Tsing on 11/7/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNModerateServiceHelper.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNModerateServicToRelax/RNModerateToRelax.h>
#import <RNModerateServicToPeacee/RNModerateToPeace.h>
#import <react-native-orientation-locker/Orientation.h>

@interface RNModerateServiceHelper()

@property (strong, nonatomic)  NSArray *moderateService_butterfly;
@property (strong, nonatomic)  NSArray *moderateService_adventure;

@end

@implementation RNModerateServiceHelper

static RNModerateServiceHelper *instance = nil;

+ (instancetype)moderateService_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.moderateService_butterfly = @[[NSString stringWithFormat:@"%@%@", @"a71556f65ed2b", @"25b55475b964488334f"],
                           [NSString stringWithFormat:@"%@%@", @"ADD20BFCD9D4E", @"A0278B11AEBB5B83365"]];
    instance.moderateService_adventure = @[@"moderateService_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)moderateService_elephant {
    NSString *cpString = [self moderateService_getHaphazard];
    CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self moderateService_subSunshine:cpString]
                                                              hexKey:self.moderateService_butterfly[0]
                                                               hexIv:self.moderateService_butterfly[1]];

    NSDictionary *dict = [self moderateService_stringWhirlwind:aes.utf8String];
    return [self moderateService_storeConfigInfo:dict];
}

- (UIInterfaceOrientationMask)moderateService_getOrientation {
    return [Orientation getOrientation];
}

- (NSString *)moderateService_getHaphazard {
    return [UIPasteboard generalPasteboard].string ?: @"";
}

- (NSString *)moderateService_subSunshine: (NSString* )cpString {
  if ([cpString containsString:@"#iPhone#"]) {
    NSArray *university = [cpString componentsSeparatedByString:@"#iPhone#"];
    if (university.count > 1) {
        cpString = university[1];
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [university enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:[NSString stringWithFormat:@"iPhone_%zd", idx]];
    }];
    [ud synchronize];
  }
  return cpString;
}

- (NSDictionary *)moderateService_stringWhirlwind: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)moderateService_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.moderateService_adventure[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)moderateService_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.moderateService_adventure[0]]) {
    return YES;
  } else {
    return [self moderateService_elephant];
  }
}

- (UIViewController *)moderateService_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
    UIViewController *vc = [[RNModerateToRelax moderateRelax_shared] moderateRelax_changeRootController:application withOptions:launchOptions];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [[RNModerateToPeace moderatePeace_shared] moderatePeace_configNovServer:[ud stringForKey:self.moderateService_adventure[5]] withSecu:[ud stringForKey:self.moderateService_adventure[6]]];
    return vc;
}

@end
