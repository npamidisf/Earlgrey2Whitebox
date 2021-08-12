target 'Earlgrey2WhiteBox' do
  use_frameworks!

  pod 'EarlGreyApp', '2.2.1'
end

target 'eDOBundle' do
  use_frameworks!

  pod 'EarlGreyApp', '2.2.1'
  pod 'EarlGreyTest', '2.2.1'
end

target 'Earlgrey2WhiteBoxUITests' do
  use_frameworks!

  pod 'EarlGreyTest', '2.2.1'
end

post_install do |installer|
  targets_to_weaklink=['eDOBundle']
  frameworks_to_weaklink=['AppFramework', 'EarlGreyTest', 'XCTest', 'eDistantObject']
  
  targets_to_weaklink.map!{|t| t="Pods-#{t}"}
  installer.pods_project.targets.each do |target|
    next unless targets_to_weaklink.include?(target.name)
    
    target.build_configurations.each do |config|
      base_config_reference = config.base_configuration_reference
      unless base_config_reference.nil?
        xcconfig_path = base_config_reference.real_path
        xcconfig = File.read(xcconfig_path)
        frameworks_to_weaklink.each do |framework|
          xcconfig = xcconfig.gsub(/-framework "#{framework}"/, "-weak_framework \"#{framework}\"")
        end
        File.open(xcconfig_path, "w") { |file| file << xcconfig }
      end
    end
  end
end
