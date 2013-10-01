require 'spec_helper'

describe User do
  it 'validates uniqueness of email' do
    User.create(:password => 'things', :password_confirmation => 'things', :email => 'things')
    should validate_uniqueness_of :email
  end
  it { should have_many :short_urls }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password_digest }
  it { should have_secure_password }
end