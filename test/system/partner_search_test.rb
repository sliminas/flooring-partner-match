# frozen_string_literal: true

require "application_system_test_case"
require "helpers/partner_helper"

class PartnerSearchTest < ApplicationSystemTestCase
  include PartnerHelper

  test "list partners" do
    partner = create_partner

    visit partners_url

    assert_selector "h1", text: "Partners"
    assert has_content? partner.name
  end
end
