//
//  StackInterfaceController.m
//  DigitalCrownSample
//
//  Created by Cee on 15/06/2015.
//  Copyright © 2015 Cee. All rights reserved.
//

#import "StackInterfaceController.h"

@interface StackInterfaceController ()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfacePicker *stackPicker;
@end

@implementation StackInterfaceController

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
        WKImage *image = [WKImage imageWithImageName:[NSString stringWithFormat:@"Stack/Head%d", i + 1]];
        [pickerItem setCaption:[NSString stringWithFormat:@"Image %d", i + 1]];
        [pickerItem setContentImage:image];
        [pickerItems addObject:pickerItem];
    }
    [self.stackPicker setItems:pickerItems];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



