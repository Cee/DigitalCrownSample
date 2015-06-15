//
//  CoordinationInterfaceController.m
//  DigitalCrownSample
//
//  Created by Cee on 15/06/2015.
//  Copyright © 2015 Cee. All rights reserved.
//

#import "CoordinationInterfaceController.h"

@interface CoordinationInterfaceController ()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfacePicker *leftPicker;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfacePicker *rightPicker;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceGroup *group;
@end

@implementation CoordinationInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    NSMutableArray *pickerImages = [[NSMutableArray alloc] init];
    
    NSMutableArray *leftPickerItems = [[NSMutableArray alloc] init];
    for (int i = 0; i < 12; i++) {
        WKPickerItem *pickerItem = [[WKPickerItem alloc] init];
        [pickerItem setTitle:[NSNumberFormatter localizedStringFromNumber:@(i)
                                                              numberStyle:NSNumberFormatterNoStyle]];
        [pickerItem setCaption:@"LEFT"];
        
        [leftPickerItems addObject:pickerItem];
        
    }
    [self.leftPicker setItems:leftPickerItems];
    
    NSMutableArray *rightPickerItems = [[NSMutableArray alloc] init];
    for (int i = 0; i < 60; i++) {
        WKPickerItem *pickerItem = [[WKPickerItem alloc] init];
        [pickerItem setTitle:[NSNumberFormatter localizedStringFromNumber:@(i)
                                                              numberStyle:NSNumberFormatterNoStyle]];
        [pickerItem setCaption:@"RIGHT"];
        
        [rightPickerItems addObject:pickerItem];
        
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"Stack/Head%d", i % 30 + 1]];
        [pickerImages addObject:image];
    }
    [self.rightPicker setItems:rightPickerItems];
    
    UIImage *progressImages = [UIImage animatedImageWithImages:pickerImages duration:0.0];
    [self.group setBackgroundImage:progressImages];
    [self.leftPicker setCoordinatedAnimations:@[self.group]];
    [self.rightPicker setCoordinatedAnimations:@[self.group]];
    
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



