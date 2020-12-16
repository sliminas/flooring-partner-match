# frozen_string_literal: true

module PartnerHelper
  BERLIN = {
    latitude:  5230..5240,
    longitude: 1300..1380
  }.freeze

  def create_partner
    latitude  = Faker::Number.within(range: BERLIN[:latitude]) / 100.0
    longitude = Faker::Number.within(range: BERLIN[:longitude]) / 100.0

    Partner.create name:      Faker::Name.name,
                   materials: [Faker::Construction.material,
                               Faker::Construction.material,
                               Faker::Construction.material],
                   latitude:  latitude,
                   longitude: longitude,
                   rating:    Faker::Number.between(from: 10, to: 50) / 10.0
  end
end
