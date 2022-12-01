require 'rails_helper'

RSpec.describe Player do
    it {should have_many :games}
end