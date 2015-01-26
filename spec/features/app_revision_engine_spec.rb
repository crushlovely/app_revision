require 'spec_helper'

feature 'something' do
  context "when a REVISION file doesn't exist" do
    scenario 'visiting the current revision path' do
      visit '/revisions/current'
      expect(page).to have_content('UNKNOWN')
    end
  end

  context 'when a REVISION file exists' do
    before do
      File.should_receive(:read).and_return('ABCDEF')
    end

    scenario 'visiting the current revision path' do
      visit '/revisions/current'
      expect(page).to have_content('ABCDEF')
    end
  end
end
