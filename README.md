# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Roadmap

#### Technology and gems 

##### The exercise consists of writing a Ruby on Rails application.

- Rails 7..2
- Ruby 3.1.0
- mysql 8
- Tailwind
- slim view templates
- The table must be done using Hotwire/Stimulus/TurboFrame, on the front end, without having to go back to the server to refresh the screen, or using any JS libraries (such as datatables).

## TEST DRAFT

Unit 
- Model Teacher
  validates presence 
    name
    school
    year
- A single page application
  request 
  teacher#index
  @teachers = Teachers.all

  forms
  Add Teacher, school and school year  

System 
  teacher#static
    it shows an html idt: table that horizontaly has 3 columns
      it shows teacher's name
      it shows teacher's school  
      it shows teacher's school year
  Column heads row is blue background with white font.
  Cells have blue borders and light gray background.
  Default # of rows is 25.
  
  Below the table, you have pagination.
    describe "index" do
      context "on table rows" do
        it "has not second page" do
          visit root_path
          expect(page).to have_no_xpath("//*[@class='pagination']//a[text()='2']")
        end
      end 

      context 'each table head column is clickable (with an up/down arrow showing next to it)' do 
     
      Change the sort direction based on the column.
    
Featur

- Add a search box.
it "narrows results for a teacher, school or year using the search box" do
  teacher1 = Teacher.create!(teacher_attributes(name: "José"))


  fill_in :search, with: "José"
  click_button 'Search'

  expect(page).to have_text(teacher.name)
end