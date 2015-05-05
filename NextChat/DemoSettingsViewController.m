//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "DemoSettingsViewController.h"

#import "NSUserDefaults+DemoSettings.h"


/**
 *  This is for demo/testing purposes only.
 *
 *  This is a terrible idea for a real app.
 */

@implementation DemoSettingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.incomingAvatarsSwitch.on = [NSUserDefaults incomingAvatarSetting];
    self.outgoingAvatarsSwitch.on = [NSUserDefaults outgoingAvatarSetting];
    
    self.springySwitch.on = [NSUserDefaults springinessSetting];
}

- (IBAction)didTapSwitch:(UISwitch *)sender
{
    if (sender == self.incomingAvatarsSwitch) {
        [NSUserDefaults saveIncomingAvatarSetting:sender.on];
    }
    else if (sender == self.outgoingAvatarsSwitch) {
        [NSUserDefaults saveOutgoingAvatarSetting:sender.on];
    }
    else if (sender == self.springySwitch) {
        [NSUserDefaults saveSpringinessSetting:sender.on];
    }
    
    [[NSUserDefaults standardUserDefaults] synchronize];
}


@end
