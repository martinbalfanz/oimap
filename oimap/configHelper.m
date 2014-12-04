//
//  configHelper.m
//  oimap
//
//  Created by Martin Balfanz on 02/12/14.
//  Copyright (c) 2014 Martin Balfanz. All rights reserved.
//

#import "ConfigHelper.h"

NSString *configPath;
NSDictionary *config;

@implementation ConfigHelper

#warning refactor

#pragma mark - helper

+ (NSDictionary *)getDefaultConfig {
  return @{ @"mu" : @"0", @"interval" : @"5" };
}

+ (NSDictionary *)getConfig {
  if (!config) {
    return [self getDefaultConfig];
  }

  return config;
}

+ (BOOL)doesConfigFileExist {
  return [[NSFileManager defaultManager] fileExistsAtPath:[self getConfigPath]
                                              isDirectory:false];
}

+ (NSString *)getConfigPath {
  if (!configPath) {
    NSString *userHomePath = NSHomeDirectory();
    NSString *path = [userHomePath stringByAppendingString:@"/.oimap"];

    configPath = path;
  }

  return configPath;
}

+ (void)updateConfig:(NSDictionary *)configuration {
  config = configuration;
  [self saveConfigFile:configuration];
}

#pragma mark - read & write to config file

+ (void)createConfigFile {
  if ([self doesConfigFileExist]) {
    return;
  }

  NSError *error;
  NSDictionary *defaultData = [self getDefaultConfig];
  NSData *jsonData =
      [NSJSONSerialization dataWithJSONObject:defaultData
                                      options:NSJSONWritingPrettyPrinted
                                        error:&error];

  [jsonData writeToFile:[self getConfigPath] atomically:NO];
}

+ (NSDictionary *)readConfigFile {
  NSError *error;
  NSData *data = [NSData dataWithContentsOfFile:[self getConfigPath]];
  NSDictionary *configData = [NSJSONSerialization JSONObjectWithData:data
                                                             options:kNilOptions
                                                               error:&error];

  if (!configData) {
    return [self getDefaultConfig];
  }

  return configData;
}

+ (BOOL)saveConfigFile:(NSDictionary *)config {
  NSError *error;
  NSData *jsonData =
      [NSJSONSerialization dataWithJSONObject:[self getConfig]
                                      options:NSJSONWritingPrettyPrinted
                                        error:&error];

  if (!jsonData) {
    NSLog(@"saveConfigFile error: %@", error);
    return false;
  } else {
    [jsonData writeToFile:[self getConfigPath] atomically:NO];
    return true;
  }
}

@end
