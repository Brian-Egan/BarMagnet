//
//  TorrentFileHandler.m
//  BarMagnet
//
//  Created by Carlo Tortorella on 15/07/13.
//  Copyright (c) 2013 Carlo Tortorella. All rights reserved.
//

#import "TorrentFileHandler.h"
#import "TorrentDelegate.h"
#import "TorrentClient.h"

@implementation TorrentFileHandler

- (void)downloadTorrentFile:(NSURL *)fileURL withDelegate:(id)delegate
{
	responseData = [NSMutableData new];
	theDelegate = delegate;
	request = [NSMutableURLRequest requestWithURL:fileURL];
	theConnection = [NSURLConnection connectionWithRequest:request delegate:self];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	[TorrentDelegate.sharedInstance.currentlySelectedClient handleTorrentData:responseData withURL:request.URL];
}

@end