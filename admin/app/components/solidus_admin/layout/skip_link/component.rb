# frozen_string_literal: true

# Skip to content link
class SolidusAdmin::Layout::SkipLink::Component < SolidusAdmin::BaseComponent
  # @param href [String] the href attribute for the skip link
  def initialize(href:)
    @href = href
  end

  def call
    link_to t(".skip_link"),
            @href,
            class: %{
              sr-only
              focus:not-sr-only
              inline-block
              focus:p-2
              focus:absolute
              font-normal text-sm
              text-white
              bg-black
            }
  end
end
