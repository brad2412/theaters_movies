require 'rails_helper'

RSpec.describe Movie do
  it {should belong_to :theater}
end