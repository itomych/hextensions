Pod::Spec.new do |spec|
    spec.name           = 'hextensions'
    spec.version        = '1.0'
    spec.license        = 'MIT'
    spec.summary        = 'Foundation/UIKit extensions'
    spec.homepage       = 'https://bitbucket.org/itomych'
    spec.author         = { 'How Else' => 'elseisgone@gmail.com' }
    spec.source         = { :git => 'https://bitbucket.org/itomych/hextensions.git', :tag => spec.version }
    spec.requires_arc   = true

    spec.ios.deployment_target = '5.0'

    spec.source_files = 'hextensions/HExtensions.h'
    spec.public_header_files = 'hextensions/HExtensions.h'

    spec.subspec 'UIKit+HExtensions' do |subspec|
        subspec.source_files = 'hextensions/UIKit+HExtensions/*.{h,m}'
        subspec.public_header_files = 'hextensions/UIKit+HExtensions/*.h'
    end

    spec.subspec 'NSFoundation+Networking' do |subspec|
        subspec.source_files = 'hextensions/NSFoundation+Networking/*.{h,m}'
        subspec.public_header_files = 'hextensions/NSFoundation+Networking/*.h'
    end
end
