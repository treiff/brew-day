require 'rails_helper'

describe 'dashboard/index.html.erb' do
  context 'when new session is created' do
    it 'displays near me' do
      expect(page).to have_content 'Brewing Near You!'
    end
  end
end
