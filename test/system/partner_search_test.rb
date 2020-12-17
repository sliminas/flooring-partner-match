# frozen_string_literal: true

require "application_system_test_case"
require "helpers/partner_helper"

class PartnerSearchTest < ApplicationSystemTestCase
  include PartnerHelper

  setup do
    @partner = create_partner

    visit partners_url
  end

  test "list partners" do

    assert_selector "h1", text: "Partners"
    assert has_content?(@partner.name)
  end

  test "it filters by material" do
    fill_in "Material", with: "aslasf"
    click_on "Search"

    assert !has_content?(@partner.name)

    fill_in "Material", with: @partner.materials.first
    click_on "Search"

    assert has_content?(@partner.name)
  end
end
