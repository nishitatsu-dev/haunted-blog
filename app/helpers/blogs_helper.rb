# frozen_string_literal: true

module BlogsHelper
  def format_content(blog)
    escaped_content = ERB::Util.html_escape(blog.content)
    escaped_content.gsub("\n", '<br>').html_safe # rubocop:disable Rails/OutputSafety
  end
end
