class ShortUrl < ActiveRecord::Base
  belongs_to :user
  validates :long_url, presence: true
  before_save :format_website
  # validate :website_validator
  after_create :shorten_url

private 

  def shorten_url
    self.update(:short_url => self.id)
  end

  def format_website
    self.long_url = "http://#{self.long_url}" unless self.long_url[/^https?/]
  end

  # def website_validator
  #   errors[:url] << I18n.t("activerecord.errors.messages.invalid") unless website_valid?
  # end

  # def website_valid?
  #   !!long_url.match(/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/)
  # end
end