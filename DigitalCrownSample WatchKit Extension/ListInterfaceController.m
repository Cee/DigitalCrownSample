//
//  ListInterfaceController.m
//  DigitalCrownSample
//
//  Created by Cee on 15/06/2015.
//  Copyright © 2015 Cee. All rights reserved.
//

#import "ListInterfaceController.h"

@interface ListInterfaceController ()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfacePicker *listPicker;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *statusLabel;
@end

@implementation ListInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSMutableArray *pickerItems = [[NSMutableArray alloc] init];
    for (int i = 0; i < 5; i++) {
        WKPickerItem *pickerItem = [[WKPickerItem alloc] init];
        NSString *title = [NSString stringWithFormat:@"Item %d", i + 1];
        [pickerItem setTitle:title];
        [pickerItem setCaption:title];
        [pickerItems addObject:pickerItem];
    }
    [self.listPicker setItems:pickerItems];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)pickerSelectedItemChanged:(NSInteger)value {
    [self.statusLabel setText:[NSString stringWithFormat:@"Item %d Selected", value + 1]];
}

- (IBAction)pickerEnabled:(BOOL)value {
    [self.listPicker setEnabled:value];
}

@end



