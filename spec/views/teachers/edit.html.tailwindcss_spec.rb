require 'rails_helper'

RSpec.describe "teachers/edit", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      name: "MyString",
      school: "MyString"
    ))
  end

  it "renders the edit teacher form" do
    render

    assert_select "form[action=?][method=?]", teacher_path(@teacher), "post" do
      assert_select "input[name=?]", "teacher[name]"
      assert_select "input[name=?]", "teacher[school]"
    end
  end
end
