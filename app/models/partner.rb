# frozen_string_literal: true

class Partner < ApplicationRecord
  METERS_PER_DEGREE = 111_000 # very much simplified for this challenge

  scope :by_material, ->(material) {
    return all if material.blank?

    where "? = ANY(materials)", material
  }

  scope :ordered_by_rating_and_distance, ->(latitude = nil, longitude = nil) {
    partners = order(rating: :desc)
    return partners unless latitude.present? && longitude.present?

    lat_distance  = "((latitude  - #{latitude})  * #{METERS_PER_DEGREE})"
    long_distance = "((longitude - #{longitude}) * #{METERS_PER_DEGREE})"
    distance = "SQRT(POWER(#{lat_distance}, 2) + POWER(#{long_distance}, 2)) / 1000.0"

    partners
      .select("partners.*, #{distance} as distance")
      .where("operating_radius >= #{distance}")
      .order(:distance)
  }

  def self.material_options
    distinct.pluck(:materials).flatten.uniq.sort
  end

  def distance_km
    return unless (distance = self[:distance])

    distance.round(1)
  end
end
