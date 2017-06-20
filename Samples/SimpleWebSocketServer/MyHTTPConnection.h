@import Foundation;
@import CocoaHTTPServer;

@class MyWebSocket;

@interface MyHTTPConnection : HTTPConnection
{
	MyWebSocket *ws;
}

@end
