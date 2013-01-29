module BigosInstagramBox
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a BigosInstagramBox initializer."
      def copy_initializer
        template "bigos_instagram_box.rb", "config/initializers/bigos_instagram_box.rb"
      end

      def create_settings
        Setting["#{BigosInstagramBox.name}_client_id"] = "YOUR_APP_ACCESS_TOKEN"
        Setting["#{BigosInstagramBox.name}_client_secret"] = "YOUR_APP_CLIENT_SECRET"
        Setting["#{BigosInstagramBox.name}_access_token"]= "YOUR_APP_ACCESS_TOKEN"
        Setting["#{BigosInstagramBox.name}_hashtag"] = ""
        Setting["#{BigosInstagramBox.name}_user_id"] = ""
        Setting["#{BigosInstagramBox.name}_user_name"] = ""
        Setting["#{BigosInstagramBox.name}_latitude"] = ""
        Setting["#{BigosInstagramBox.name}_longitude"] = ""
        Setting["#{BigosInstagramBox.name}_limit"] = 10
      end


    end
  end
end