# README
## The goal of this excersise is to create a single page application displaying a table for Teachers, their school and year they have worked at the school. Therefore, the problem to be solved is to redner a single page application without the need of using JS a lot. For that, Turbo manages HTML requests to the server and directs responses, and Stimulus - a minimal JavaScript library - manages the interactions that Turbo can’t handle. 

## Some of the point I would like to mention about this project are:

- Limited time 
- New technologies 
- Certain parameters that needed to be cover

# ROADMAP

* Install mysql
* Add Tailwind
* Write Capybara test
* Install and setup rails rspec
* Generate teacher model using scaffold
* Write controller
* Finishes and tailwind design 
* Deploy 


## CODE 

1. Before generating the model I have hardcode some of the test, specially the systems to follow best practices

2. Initialize the progect and create the databse by runing respective commands: rails g new <NAME>
and rails db:create 

3. Wrote the tests correctly that means adding accurate tags for the HTML elements and features requested. 

* selenium - simulates user interaction for tests
* facker - populates objects 
* factory - create objects 


- Being very descriptive 

- Use “describe” to wrap a set of tests against one functionality and “context” to wrap a set of tests against one functionality under the same state

- Is expected vs. expect(page)


4. Config routes 

5. Added views

6. Worked controllers applying some DRY principles using a partial   
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
- [x]The table must be done using Hotwire/Stimulus/TurboFrame, on the front end, without having to go back to the server to refresh the  screen, or using any JS libraries (such as datatables).
- [x]Add a search box.

# ROADMAP

- [x] Install mysql
- [x] Add Tailwind
- [x] Install and setup rails rspec
- [x] Write Capybara test
- [x] Generate teacher model using scaffold
- [x] Trobleshoot capybara test
  No errors allowed
  Failures allowed!
- [x] Write controller
- [x] Views
- [x] Finishes and tailwind design 
- [x] Deploy 
