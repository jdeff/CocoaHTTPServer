@import CocoaHTTPServer;
@import CocoaLumberjack;

#import "AppDelegate.h"
#import "MyHTTPConnection.h"

// Log levels: off, error, warn, info, verbose
static const int ddLogLevel = DDLogLevelVerbose;

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Configure our logging framework.
	// To keep things simple and fast, we're just going to log to the Xcode console.
	[DDLog addLogger:[DDTTYLogger sharedInstance]];
	
	// Initalize our http server
	httpServer = [[HTTPServer alloc] init];
	
	// Tell the server to broadcast its presence via Bonjour.
	// This allows browsers such as Safari to automatically discover our service.
	[httpServer setType:@"_http._tcp."];
	
	// Normally there's no need to run our server on any specific port.
	// Technologies like Bonjour allow clients to dynamically discover the server's port at runtime.
	// However, for easy testing you may want force a certain port so you can just hit the refresh button.
//	[httpServer setPort:12345];
	
	// We're going to extend the base HTTPConnection class with our MyHTTPConnection class.
	// This allows us to do custom password protection on our sensitive directories.
	[httpServer setConnectionClass:[MyHTTPConnection class]];
	
	// Serve files from the standard Sites folder
	NSString *docRoot = [@"~/Sites" stringByExpandingTildeInPath];
	DDLogInfo(@"Setting document root: %@", docRoot);
	
	[httpServer setDocumentRoot:docRoot];
	
	NSError *error = nil;
	if (![httpServer start:&error])
	{
		DDLogError(@"Error starting HTTP Server: %@", error);
	}
}

@end
