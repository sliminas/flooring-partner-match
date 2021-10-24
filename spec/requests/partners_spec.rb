# frozen_string_literal: true

require "swagger_helper"

RSpec.describe PartnersController, type: :request do
  before do
    Partner.create(name: "foo", materials: ["parkett"], latitude: 15.44, longitude: 13.12, rating: 4.5)
  end

  it "returns"
  run_test! do |response|
    partners = JSON.parse(response.body)
    expect(partners.size).to eq 1

    partner = partners.first
    expect(partner["name"]).to eq("foo")
  end
end
