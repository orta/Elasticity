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
  pod "NSURL+QueryDictionary", :git => "https://github.com/orta/NSURL-QueryDictionary.git", :branch => "patch-1"
  pod "ISO8601DateFormatter", :git => "https://github.com/orta/iso-8601-date-formatter.git"
  pod "EDColor", :git => "https://github.com/orta/color.git", :branch => "tvos"
  pod 'LVTwitterOAuthClient', :git => "https://github.com/orta/LVTwitterOAuthClient.git", :branch => "tvos"
  pod 'OAuthCore', :git => "https://github.com/orta/OAuthCore.git", :branch => "tvos"

  pod 'Artsy+UIColors', :git => "https://github.com/artsy/Artsy-UIColors.git", :branch => "tvos"

  # TODO: Update OSS Fonts for tvOS

  if ENV['ARTSY_STAFF_MEMBER'] != nil || ENV['CI'] != nil
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
  platform_pods
end
#
# target 'ElasticityKitWatch' do
#   platform_pods
# end
#
# target 'ElastictityKitiOS' do
#   platform_pods
# end
