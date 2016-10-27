//
//  MidiDeviceList.m
//  euclideansequence
//
//  Created by Apple on 16/07/2016.
//  Copyright © 2016 Delaney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MIKMIDI/MIKMIDI.h>
#import "MidiController.h"

@interface MidiController ()

@end

@implementation MidiController



NSString* name;
MIKMIDIDeviceManager *deviceManager;
MIKMIDIDevice	*device;

MIKMIDIDevice * firstDevice;




-(void)searchForDevices {
    
    NSArray *availableMIDIDevices = [[MIKMIDIDeviceManager sharedDeviceManager] availableDevices];

    for (MIKMIDIDevice *device in availableMIDIDevices) {
        firstDevice = device;
        NSLog(@"MDL: Device is: %@\n", device.displayName );
    }
}

-(NSString*)getName{
    
    return firstDevice.displayName;
    
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"KVO change to keyPath: %@", keyPath);
    
    if ([keyPath isEqualToString:@"availableDevices"]) {
        if (![deviceManager.availableDevices containsObject:device]) {
            device = nil;
        }
    }
}





@end