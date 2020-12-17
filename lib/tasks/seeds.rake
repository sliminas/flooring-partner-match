# frozen_string_literal: true

namespace :db do
  task :seed do
    require_relative "../../db/seeds"
    Seeds.create_partners
    Seeds.create_berlin_sights
  end
end
