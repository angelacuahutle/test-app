class Teacher < ApplicationRecord

  FILTER_PARAMS = %i[name column direction].freeze

  scope :by_name, ->(query) { where('teachers.name like ?', "%#{query}%") }
  scope :by_school, ->(school) { where(school: school) if school.present? }

  def self.filter(filters)
    Teacher
      .all
      .by_name(filters['name'])
      .by_school(filters['school'])
      .order("#{filters['column']} #{filters['direction']}")
  end
end
