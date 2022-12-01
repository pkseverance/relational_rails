require 'rails_helper'

RSpec.describe Game do
    it {should belong_to :player}
end