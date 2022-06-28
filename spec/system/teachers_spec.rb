require 'rails_helper'

RSpec.describe Teacher, type: :system do
  describe 'single page application', js: true do
    let!(:teachers) { create_list(:teacher, 100) }

    before do
      visit root_path
    end

    it { expect(page).to have_css('#create_teacher') }
    it { expect(page).to have_css('th', :count => 3) }
    it { expect(page).to have_css('th#teachers-name') }
    it { expect(page).to have_css('th#teachers-school') }
    it { expect(page).to have_css('th#teachers-year') }
    it { expect(page).to have_xpath(
      "//thead[contains(@class, 'bg-blue-500') and contains(@class, 'text-white')]"
    )}
    it { expect(page).to have_xpath(
      "//td[contains(@class, 'border border-blue-400') and contains(@class, 'bg-slate-200')]"
    )}
    it { expect(find_all('tr.border').size).to eq(25) }
    it 'has pagination' do
      expect(page).to have_css('nav#pagination')
    end

    context "when using table rows" do
      it "has a second page" do
        visit root_path
        expect(page).to have_xpath('//*[@id="pager"]/div[2]/a')
      end

      it 'sorts strings' do
        click_link('Name')
        expect(page).to have_xpath('//*[@id="teachers-name"]/span')
      end
    end

    context 'when searching' do
      let(:sample_teacher) { create(:teacher, name: 'Sample Teacher') }
      it 'has a search box for teachers names' do
        within do ('input#name')
          fill_in :search, with: 'Sample Teacher'
          click_button 'Search'
        end
        expect(page).to have_css('.query-result')
      end
    end
  end
end
