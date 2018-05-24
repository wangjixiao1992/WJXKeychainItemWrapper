Pod::Spec.new do |s|
s.name = 'WJXKeychainItemWrapper'
s.version = '1.1.1'
s.license = 'MIT'
s.summary = '苹果demo的KeychainItemWrapper'
s.description = '苹果demo的KeychainItemWrapper,只是为了便于自己使用.不用拖文件.'
s.homepage = 'https://github.com/wangjixiao1992/WJXKeychainItemWrapper'
s.authors = {'wangjixiao' => '642907599@qq.com' }
s.source = {:git => "https://github.com/wangjixiao1992/WJXKeychainItemWrapper.git", :tag => "v1.1.1"}
s.source_files  = "**/*.{h,m}"
s.platform = :ios, "8.0"
s.requires_arc = false
end
