# frozen_string_literal: true

require "application_system_test_case"
require "helpers/partner_helper"

class PartnerSearchTest < ApplicationSystemTestCase
  include PartnerHelper

  setup do
    @top_partner    = create_partner rating: 4.5
    @medium_partner = create_partner rating: 3
    @bad_partner    = create_partner rating: 1

    visit partners_url
  end

  test "list partners orderered by rating" do
    assert_selector "h1", text: "Partners"

    partners = all(".partners .partner")
    assert_equal partners.size, 3

    assert_match @top_partner.name,    partners[0].text
    assert_match @medium_partner.name, partners[1].text
    assert_match @bad_partner.name,    partners[2].text
  end

  test "it filters by material" do
    fill_in "Material", with: "aslasf"
    click_on "Search"

    assert_not has_content?(@top_partner.name)

    fill_in "Material", with: @top_partner.materials.first
    click_on "Search"

    assert has_content?(@top_partner.name)
  end
end
