platform :ios, '9.0'
platform :tvos, '9.0'

plugin 'cocoapods-keys', {
    :project => "Elasticity",
    :targets => "ElastiTV",
    :keys => [
        "ArtsyAPIClientSecret",
        "ArtsyAPIClientKey",
    ]
}

def app_pods()
  pod 'Artsy+UIColors', :git => "https://github.com/artsy/Artsy-UIColors.git", :branch => "tvos"

  # TODO: Update OSS Fonts for tvOS
  if ENV['ARTSY_STAFF_MEMBER'] == 'true' || ENV['CI'] == 'true'
    pod 'Artsy+UIFonts', :git => "https://github.com/artsy/Artsy-UIFonts.git", :branch => "old_fonts_new_lib_tv"
  else
    pod 'Artsy+OSSUIFonts'
  end
end

def platform_pods()
  pod 'Artsy+Authentication', :git => "https://github.com/artsy/Artsy-Authentication.git", :branch => "tvos"
end

target 'Elasticity' do
  app_pods
end

target 'ElastiTV' do
  app_pods
end

target 'ElasticityKitWatch' do
  platform_pods
end

target 'ElastictityKitiOS' do
  platform_pods
end
