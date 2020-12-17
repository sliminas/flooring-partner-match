# frozen_string_literal: true

module PartnerHelper
  BERLIN = {
    latitude:  5230..5240,
    longitude: 1300..1380
  }.freeze

  def create_partner(rating: nil, name: nil, latitude: nil, longitude: nil, radius: nil, materials: nil)
    name      ||= Faker::Company.name
    latitude  ||= Faker::Number.within(range: BERLIN[:latitude]) / 100.0
    longitude ||= Faker::Number.within(range: BERLIN[:longitude]) / 100.0
    rating    ||= Faker::Number.between(from: 10, to: 50) / 10.0
    radius    ||= Faker::Number.within(range: 5..10)
    materials ||= [Faker::Construction.material, Faker::Construction.material, Faker::Construction.material].uniq

    Partner.create name:             name,
                   materials:        materials,
                   operating_radius: radius,
                   latitude:         latitude,
                   longitude:        longitude,
                   rating:           rating
  end

  def create_berlin_sights
    [
      create_partner(name:      "stasi_museum",
                     rating:    5,
                     radius:    5,
                     latitude:  52.51444602822395,
                     longitude: 13.486910068524296),
      create_partner(name:      "parliament",
                     rating:    5,
                     latitude:  52.51815115961212,
                     longitude: 13.376829145574872),
      create_partner(name:      "pergamon",
                     rating:    5,
                     latitude:  52.52142325244215,
                     longitude: 13.39799442262694),
      create_partner(name:      "alex",
                     rating:    5,
                     latitude:  52.521990683788495,
                     longitude: 13.41200731124045)
    ]
  end
end
