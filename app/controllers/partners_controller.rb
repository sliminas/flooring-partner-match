# frozen_string_literal: true

class PartnersController < ApplicationController
  def index
    @partners = Partner.order(rating: :desc).all
  end
end
