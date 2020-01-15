module PageTitleConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_title_defaults
  end

  def set_page_title_defaults
    @page_title = "KOU Portfolio | My Portfolio Website"
    @seo_description = "My portfolio website"
    @seo_keywords = "Kong Ou portfolio"
  end
end