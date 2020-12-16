# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seeds
  BERLIN = {
    latitude:  5230..5240,
    longitude: 1300..1380
  }.freeze

  def self.create_partners
    10.times do
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
end
