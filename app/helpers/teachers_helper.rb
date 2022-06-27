# frozen_string_literal: true

# Hotwire helpers for teachers resource
module TeachersHelper
  def sort_link(column, label)
    if column == params[:column]
      link_to(label, list_teachers_path(column: column, direction: next_direction))
    else
      link_to(label, list_teachers_path(column: column, direction: 'asc'))
    end
  end

  def next_direction
    params[:direction] == 'asc' ? 'desc' : 'asc'
  end

  def sort_indicator
    tag.span(class: "sort sort-#{params[:direction]}")
  end

  def build_order_link(column:, label:)
    if column == session.dig('teacher_filters', 'column')
      link_to(label, list_teachers_path(column: column, direction: next_direction))
    else
      link_to(label, list_teachers_path(column: column, direction: 'asc'))
    end
  end

  def next_direction
    session['teacher_filters']['direction'] == 'asc' ? 'desc' : 'asc'
  end

  def sort_indicator
    tag.span(class: "sort sort-#{session['teacher_filters']['direction']}")
  end
end
