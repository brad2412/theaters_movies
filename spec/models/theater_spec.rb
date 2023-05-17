require 'rails_helper'

RSpec.describe Theater do
  it {should have_many :movies}
end