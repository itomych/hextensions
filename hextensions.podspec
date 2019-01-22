Pod::Spec.new do |spec|
    spec.name           = 'hextensions'
    spec.version        = '2.4'
    spec.license        = 'MIT'
    spec.summary        = 'Foundation/UIKit extensions'
    spec.homepage       = 'https://bitbucket.org/itomych'
    spec.author         = { 'How Else' => 'elseisgone@gmail.com' }
    spec.source         = { :git => 'https://bitbucket.org/itomych/hextensions.git', :tag => spec.version }
    spec.requires_arc   = true

    spec.ios.deployment_target = '5.0'

    spec.source_files = 'hextensions/HExtensions.h'
    spec.public_header_files = 'hextensions/HExtensions.h'

    spec.subspec 'UIImage+CALayer' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UIImage+CALayer.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UIImage+CALayer.h'
    end

    spec.subspec 'UIImage+UIColor' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UIImage+UIColor.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UIImage+UIColor.h'
    end

    spec.subspec 'UINavigationController+HExtension' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UINavigationController+HExtension.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UINavigationController+HExtension.h'
    end

    spec.subspec 'UITableView+HElection' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UITableView+HElection.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UITableView+HElection.h'
    end

    spec.subspec 'UITableViewCell+IOS8DetailCellFix' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UITableViewCell+IOS8DetailCellFix.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UITableViewCell+IOS8DetailCellFix.h'
    end

    spec.subspec 'UIView+HEHairline' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UIView+HEHairline.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UIView+HEHairline.h'
    end

    spec.subspec 'UIView+HENib' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UIView+HENib.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UIView+HENib.h'
    end

    spec.subspec 'UITextField+HECursor' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UITextField+HECursor.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UITextField+HECursor.h'
    end

    spec.subspec 'UIWebView+HEJavaScriptContext' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UIWebView+HEJavaScriptContext.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UIWebView+HEJavaScriptContext.h'
    end

    spec.subspec 'UIKit+HExtensions' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UIKit+HExtensions.h'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UIKit+HExtensions.h'
        subspec.dependency 'hextensions/UIImage+CALayer'
        subspec.dependency 'hextensions/UIImage+UIColor'
        subspec.dependency 'hextensions/UINavigationController+HExtension'
        subspec.dependency 'hextensions/UITableView+HElection'
        subspec.dependency 'hextensions/UITableViewCell+IOS8DetailCellFix'
        subspec.dependency 'hextensions/UIView+HEHairline'
        subspec.dependency 'hextensions/UIView+HENib'
        subspec.dependency 'hextensions/UIWebView+HEJavaScriptContext'
    end

    spec.subspec 'NSFoundation+Networking' do |subspec|
        subspec.source_files = 'hextensions/NSFoundation+HExtensions/NSDictionary+Networking.{h,m}'
        subspec.public_header_files = 'hextensions/NSFoundation+HExtensions/NSDictionary+Networking.h'
    end

    spec.subspec 'NSFoundation+HExtensions' do |subspec|
        subspec.source_files = 'hextensions/NSFoundation+HExtensions/*.{h,m}'
        subspec.public_header_files = 'hextensions/NSFoundation+HExtensions/*.h'
        subspec.exclude_files = 'hextensions/NSFoundation+HExtensions/NSDictionary+Networking.{h,m}'
    end
end
