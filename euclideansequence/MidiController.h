//
//  MidiDeviceList.h
//  euclideansequence
//
//  Created by Apple on 16/07/2016.
//  Copyright © 2016 Delaney. All rights reserved.
//

#ifndef MidiDeviceList_h
#define MidiDeviceList_h

#import <Foundation/Foundation.h>
#import <MIKMIDI/MIKMIDI.h>

@interface MidiController : NSObject

@property NSString *name;

-(void)searchForDevices;

-(NSString*)getName;

@end

#endif /* MidiDeviceList_h */
