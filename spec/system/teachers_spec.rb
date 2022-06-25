require 'rails_helper'

RSpec.describe Teacher, type: :system do
  describe 'single page application' do
    before do
      visit root_path
    end

    it { expect(page).to have_css('#create_teacher') }
    it { expect(page).to have_css('th', :count => 3) }
    it { expect(page).to have_css('th#name') }
    it { expect(page).to have_css('th#school') }
    it { expect(page).to have_css('th#year') }
    it { expect(page).to have_css('th.bg-{blue}.text-white-400') }
    it { expect(page).to find('td.border-blue.gray-bg.font-white') }
    it { expect(page).to have_css('tr', :count => 25) }
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
      let(:sample_teacher) { create(:teacher, name: 'Sample Teacher') }
      it 'has a search box for names, schools and years' do
        within do # search-box
          fill_in :search, with: 'Sample Teacher'
          click_button 'Search'
        end
        expect(page).to have_css('.query-result')
      end
    end
  end
end
