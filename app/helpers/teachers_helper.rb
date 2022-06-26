# frozen_string_literal: true

# Hotwire helpers for teachers resource
module TeachersHelper
  def sort_link(column, label)
    link_to(label, list_teachers_path(column: column))
  end
end
