# frozen_string_literal: true

class PartnersController < ApplicationController
  def index
    @partners = Partner
                .by_material(params[:material])
                .ordered_by_rating_and_distance(params[:latitude], params[:longitude])
  end
end
