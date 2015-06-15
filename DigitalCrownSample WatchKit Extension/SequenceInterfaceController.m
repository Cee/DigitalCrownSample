//
//  SequenceInterfaceController.m
//  DigitalCrownSample
//
//  Created by Cee on 15/06/2015.
//  Copyright © 2015 Cee. All rights reserved.
//

#import "SequenceInterfaceController.h"

@interface SequenceInterfaceController ()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfacePicker *sequencePicker;
@end

@implementation SequenceInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSMutableArray *pickerItems = [[NSMutableArray alloc] init];
    for (int i = 0; i < 25; i++) {
        WKPickerItem *pickerItem = [[WKPickerItem alloc] init];
        WKImage *image = [WKImage imageWithImageName:[NSString stringWithFormat:@"Sequence/Sequence%d", i + 1]];
        [pickerItem setContentImage:image];
        [pickerItems addObject:pickerItem];
    }
    [self.sequencePicker setItems:pickerItems];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



