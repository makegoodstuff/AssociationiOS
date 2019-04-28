platform :ios, '9.0'

inhibit_all_warnings!

pre_install do |installer|
    installer.analysis_result.specifications.each do |s|
        s.swift_version = '4.0'
    end
end

target 'Association' do
  pod 'RIBs', '~> 0.9.1'
  pod 'SnapKit', '~> 4.0.0'
  pod 'RxCocoa', '~> 4.0.0'
end
