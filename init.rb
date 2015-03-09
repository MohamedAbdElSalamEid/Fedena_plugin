# Include hook code here

require 'translator'
require File.join(File.dirname(__FILE__), "lib", "mohamed_test")

FedenaPlugin.register = {
  :name=>"mohamed_test",
  :description=>"Mohamed Test ",
  :auth_file=>"config/test_auth.rb",
  :more_menu=>{:target_id=>"more-parent",:title=>"test_plugin",:controller=>"hello",:action=>"student_create"},
  :dashboard_menu=>{:title=>"test_text",:controller=>"hello",:action=>"index",\
      :options=>{:class => "option_buttons", :id => "library_button", :title => "manage_plug"}},
}



Dir[File.join("#{File.dirname(__FILE__)}/config/locales/*.yml")].each do |locale|
  I18n.load_path.unshift(locale)
end

if RAILS_ENV == 'development'
  ActiveSupport::Dependencies.load_once_paths.\
    reject!{|x| x =~ /^#{Regexp.escape(File.dirname(__FILE__))}/}
end