# frozen_string_literal: true

require "test_helper"

class PartnerTest < ActiveSupport::TestCase
  test "#by_material filters by material" do
    Partner.create name: "woody",    materials: %w[wood plastic glas]
    Partner.create name: "woody 2",  materials: %w[wood glas]
    Partner.create name: "no woody", materials: %w[plastic glas]

    assert_equal Partner.by_material("wood").order(:name).pluck(:name), ["woody", "woody 2"]
  end
end
