# CocoaHTTPServer Podfile

IOS_VERSION = '8'
OSX_VERSION = '10.11'

workspace 'CocoaHTTPServer.xcworkspace'

use_frameworks!
inhibit_all_warnings!

target 'CocoaHTTPServer' do
  project 'CocoaHTTPServer/CocoaHTTPServer.xcodeproj'

  platform :ios, IOS_VERSION

  pod 'CocoaAsyncSocket', '~> 7.6'
  pod 'CocoaLumberjack', '~> 3.2'
end

# Example Projects

abstract_target 'OSX Examples' do
  platform :osx, OSX_VERSION

  pod 'CocoaHTTPServer', path: '.'

  target 'SimpleHTTPServer' do
    project 'Samples/SimpleHTTPServer/SimpleHTTPServer.xcodeproj'
  end

  target 'DynamicServer' do
    project 'Samples/DynamicServer/DynamicServer.xcodeproj'
  end

  target 'PostHTTPServer' do
    project 'Samples/PostHTTPServer/PostHTTPServer.xcodeproj'
  end

  target 'SecureHTTPServer' do
    project 'Samples/SecureHTTPServer/SecureHTTPServer.xcodeproj'
  end

  target 'SecureWebSocketServer' do
    project 'Samples/SecureWebSocketServer/SecureWebSocketServer.xcodeproj'
  end

  target 'SimpleFileUploadServer' do
    project 'Samples/SimpleFileUploadServer/SimpleFileUploadServer.xcodeproj'
  end

  target 'SimpleWebSocketServer' do
    project 'Samples/SimpleWebSocketServer/SimpleWebSocketServer.xcodeproj'
  end

  target 'WebDAVServer' do
    project 'Samples/WebDAVServer/WebDAVServer.xcodeproj'
  end
end

abstract_target 'iOS Examples' do
  platform :ios, IOS_VERSION

  pod 'CocoaHTTPServer', path: '.'

  target 'iPhoneHTTPServer' do
    project 'Samples/iPhoneHTTPServer/iPhoneHTTPServer.xcodeproj'
  end
end
