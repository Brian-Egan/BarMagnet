//
//  TorrentFileHandler.h
//  BarMagnet
//
//  Created by Carlo Tortorella on 15/07/13.
//  Copyright (c) 2013 Carlo Tortorella. All rights reserved.
//

#import "ConnectionHandler.h"

@interface TorrentFileHandler : ConnectionHandler
{
	NSMutableURLRequest * request;
}

- (void)downloadTorrentFile:(NSURL *)fileURL withDelegate:(id)delegate;

@end
