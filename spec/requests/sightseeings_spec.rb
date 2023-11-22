require 'rails_helper'

RSpec.describe "Sightseeings", type: :request do
  include_examples("request_shared_spec", "sightseeings", 7)

  let(:valid_attributes) do
    {
      location: Faker::Lorem.word,
      description: Faker::Lorem.sentence,
      price_per_hour: 45,
      time_spent: 4,
    }
  end

  let(:invalid_attributes) do
    {
      location: nil,
      description: Faker::Lorem.sentence,
      price_per_hour: 45,
      time_spent: 4,
    }
  end
  
  let(:new_attributes)do
    {
      location: Faker::Lorem.word
    }
  end
end
