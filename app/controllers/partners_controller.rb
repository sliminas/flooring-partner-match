# frozen_string_literal: true

class PartnersController < ApplicationController
  def index
    @partners = Partner.all
  end
end
