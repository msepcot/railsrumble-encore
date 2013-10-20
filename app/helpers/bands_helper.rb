module BandsHelper

  def twitter_link(band)
    return unless band.twitter.present?

    content_tag(:p, link_to("@#{band.twitter}", "http://twitter.com/#{band.twitter}"))
  end

  def website_link(band)
    return unless band.web.present?

    content_tag(:p, link_to("Official Website of #{band.name}", band.web))
  end

end
