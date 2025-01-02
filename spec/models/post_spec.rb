require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    it do
      # debugger
      is_expected.to validate_presence_of(:title)
    end
  end
end
