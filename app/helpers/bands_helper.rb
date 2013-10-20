module BandsHelper

  def twitter_link(band)
    return unless band.twitter.present?

    link_to 'twitter', "http://twitter.com/#{band.twitter}"
  end

  def website_link(band)
    return unless band.web.present?

    link_to 'website', band.web
  end

end
