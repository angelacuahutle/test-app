# README
## The excersise consist on creating a single page application 

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
- Tailwind
- slim view templates
- The table must be done using Hotwire/Stimulus/TurboFrame, on the front end, without having to go back to the server to refresh the screen, or using any JS libraries (such as datatables).

# ROADMAP

- Install mysql
- Add Tailwind
- Install and setup rails rspec
- Write Capybara test
- Generate teacher model using scaffold
- Write controller
- Finishes and tailwind design 
- Deploy 

## TEST DRAFT

Unit 
- Model Teacher
  validates presence 
    name
    school
    year
Controller
  teacher#index
  @teachers = Teachers.all
System
  visit root_path # teachers#index
  it is_expected.to have_css('#create_teacher') # add params
  it shows an html id: table that horizontally has 3 columns
    expect table header to contain 3 th
  it is_expected to find('th#name')
  it is_expected to find('th#school')
  it is_expected to find('th#year')
  it is_expected to find('th.blue-bg.font-white')
  it is_expected to find('td.border-blue.gray-bg.font-white')
  it is_expected to have 25 tds
  it 'has pagination' do
    expect(page).to have_css('nav#pagination')
  end

  context "when using table rows" do
    it "has second page" do
      visit root_path
      expect(page).to have_xpath("//*[@class='pagination']//a[text()='2']")
    end

    it 'sorts strings' do
      find('th#sort_by', first).click # find name column
      expect('td.name').to sort_record
    end

    it 'sorts datetime' do
      find('th#sort_by', third).click # find name column
      expect('td.year').to sort_record
    end
  end 

  context 'when searching' do
    let(:sample_teacher) FactoryBot.create(:teacher, name: 'Sample Teacher')
    it 'has a search box for names, schools and years' do
      within #search-box
        fill_in :search, with: 'Sample Teacher'
        click_button 'Search'
      end
      expect(page).to have_css('.query-result')
    end
  end
