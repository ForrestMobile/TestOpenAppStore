//
//  ViewController.m
//  TestOpenAppStore
//
//  Created by Forrest Shi on 12/9/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)openEfektaFromAppStore:(id)sender{
    NSLog(@"%s",__PRETTY_FUNCTION__);
    
    //http://itunes.apple.com/us/app/ef-english-first-high-flyers/id438876183?mt=8
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"itms-apps://itunes.apple.com/app/ef-english-first-high-flyers/id438876183?mt=8"]];

}

- (IBAction)openEfektaFromSchoolTest:(id)sender{
    NSLog(@"%s",__PRETTY_FUNCTION__);
    
    //http://itunes.apple.com/us/app/ef-english-first-high-flyers/id438876183?mt=8
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://test.englishtown.com/school/tablet"]];
    
}


- (IBAction)openEfektaFromMyWeb:(id)sender{
        
    if (webView) {
        [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://10.128.42.224"]]];
    }
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView{}
- (void)webViewDidFinishLoad:(UIWebView *)webView{}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{}

@end
