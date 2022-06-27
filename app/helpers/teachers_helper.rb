# frozen_string_literal: true

# Hotwire helpers for teachers resource
module TeachersHelper
  def sort_link(column, label)
    if column == params[:column]
      link_to(label, list_teachers_path(column: column))
    else
      link_to(label, list_teachers_path(column: column, direction: 'asc'))
    end
  end

  def next_direction
    params[:direction] == 'asc' ? 'desc' : 'asc'
  end
end
