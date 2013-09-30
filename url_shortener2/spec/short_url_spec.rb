require 'spec_helper'

describe ShortUrl do
  it { should validate_presence_of :long_url }
end