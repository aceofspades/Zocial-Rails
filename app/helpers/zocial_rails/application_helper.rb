module ZocialRails
  module ApplicationHelper
    def zocial_button(provider, title = nil)
      title ||= "Sign in with #{provider.to_s.titleize}"
      %Q{<button class="zocial #{provider}">#{title}</button>}
    end

    def zocial_devise_omniauth_link(resource_name, provider, title = nil)
      title ||= "Sign in with #{provider.to_s.titleize}"
      link_to title, omniauth_authorize_path(resource_name, provider), :class => [:zocial, provider]
    end
  end
end
