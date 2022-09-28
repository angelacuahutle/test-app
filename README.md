# README
## The excersise consist on creating a single page application displaying a table of Teachers, their school and year they worked at the school 

![./app-shoot.png]

### HOW TO SET UP THE REPOSITORY TO RUN THE APP

Follow these steps to run:

```sh
git clone git@github.com:angelacuahutle/test-app.git
cd test-app.git
cp config/example/application.yml .application.yml
rails db:migrate db:seed
bundle install
.bin/dev
```

To run tests,

```sh
rspec
```

# ROADMAP

* Install mysql
* Add Tailwind
* Write Capybara test
* Install and setup rails rspec
* Generate teacher model using scaffold
* Write controller
* Finishes and tailwind design 
* Deploy 


#### Language, frameworks and databases used 

- Rails 7..2
- Ruby 3.1.0
- mysql 8
- Rspec 
- Capybara
- Tailwind
- slim view templates
- Hotwire/Stimulus/TurboFrame, on the front end, without having to go back to the server to refresh the screen, or using any JS libraries (such as datatables).

## REQUIREMENTS

- [x]A single page application, displaying in its landing page (home page), a table with the following columns:
Teacher                School                   School Year
- [x]Table is centered horizontally in the home page. 
- [x]Column heads row is blue background with white font.
- [x]Cells have blue borders and light gray background.
- [x]Default # of rows is 25.
- [x]Below the table, you have pagination.
- [x]Each table head column is clickable (with an up/down arrow showing next to it) to change the sort direction, based on that column.
- [x]The table must be done using Hotwire/Stimulus/TurboFrame, on the front end, without having to go back to the server to refresh the    screen, or using any JS libraries (such as datatables).
- [x]Add a search box.

# ROADMAP
