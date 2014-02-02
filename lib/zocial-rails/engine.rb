require 'zocial-rails/version'

module ZocialRails
  class Engine < ::Rails::Engine
    initializer :install_helpers do |app|
      ApplicationController.class_eval do |variable|
        helper ZocialRails::ApplicationHelper
      end
    end
  end
end
