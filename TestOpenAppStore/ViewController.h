//
//  ViewController.h
//  TestOpenAppStore
//
//  Created by Forrest Shi on 12/9/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>{
    IBOutlet UIWebView *webView;
}


- (IBAction)openEfektaFromAppStore:(id)sender;

- (IBAction)openEfektaFromMyWeb:(id)sender;

- (IBAction)openEfektaFromSchoolTest:(id)sender;

@end
