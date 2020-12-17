# frozen_string_literal: true

require "helpers/partner_helper"
require "test_helper"

class PartnerTest < ActiveSupport::TestCase
  include PartnerHelper

  test ".by_material filters by material" do
    Partner.create name: "wood", materials: %w[wood plastic glas]
    Partner.create name: "wood 2", materials: %w[wood glas]
    Partner.create name: "no wood", materials: %w[plastic glas]

    assert_equal ["wood", "wood 2"], Partner.by_material("wood").order(:name).pluck(:name)
  end

  test ".ordered_by_rating_and_distance filters by operating radius and orders by rating and distance" do
    _stasi_museum, parliament, pergamon, alex = create_berlin_sights

    alexa = [52.51903446769297, 13.414279765697705]

    partners = Partner.ordered_by_rating_and_distance(*alexa)

    assert_equal [alex, pergamon, parliament], partners
    assert_equal [0.4, 1.8, 4.2], partners.map(&:distance_km)
  end
end
