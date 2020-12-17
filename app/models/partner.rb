# frozen_string_literal: true

class Partner < ApplicationRecord

  scope :by_material, ->(material) {
    where "materials like ?", "%#{material}%"
  }

  serialize :materials

end
