module ApplicationHelper
  def primary_links
    [
      {
        name: 'Welcome',
        url: welcome_path
      }
    ].freeze
  end
end
