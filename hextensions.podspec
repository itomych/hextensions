Pod::Spec.new do |spec|
    spec.name           = 'hextensions'
    spec.version        = '2.0'
    spec.license        = 'MIT'
    spec.summary        = 'Foundation/UIKit extensions'
    spec.homepage       = 'https://bitbucket.org/itomych'
    spec.author         = { 'How Else' => 'elseisgone@gmail.com' }
    spec.source         = { :git => 'https://bitbucket.org/itomych/hextensions.git', :tag => spec.version }
    spec.requires_arc   = true

    spec.ios.deployment_target = '5.0'

    spec.source_files = 'hextensions/HExtensions.h'
    spec.public_header_files = 'hextensions/HExtensions.h'

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

    spec.subspec 'UIView+HENib' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UIView+HENib.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UIView+HENib.h'
    end

    spec.subspec 'UIWebView+HEJavaScriptContext' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UIWebView+HEJavaScriptContext.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UIWebView+HEJavaScriptContext.h'
    end

    spec.subspec 'UIKit+HExtensions' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/UIKit+HExtensions.h'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/UIKit+HExtensions.h'
        subspec.dependency 'UIImage+UIColor'
        subspec.dependency 'UINavigationController+HExtension'
        subspec.dependency 'UITableView+HElection'
        subspec.dependency 'UITableViewCell+IOS8DetailCellFix'
        subspec.dependency 'UIView+HENib'
        subspec.dependency 'UIWebView+HEJavaScriptContext'
    end

    spec.subspec 'NSFoundation+Networking' do |subspec|
        subspec.source_files = 'hextensions/NSFoundation+Networking/*.{h,m}'
        subspec.public_header_files = 'hextensions/NSFoundation+Networking/*.h'
    end
end
