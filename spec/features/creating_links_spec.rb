feature "creates links" do
  scenario "user submits a new link" do
    visit ('/links/new')
    fill_in :title, with: 'Google'
    fill_in :url, with:  'https://www.google.co.uk/'
    click_button 'Submit'
  end
end
