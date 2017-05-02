feature "creates links" do
  scenario "user submits a new link" do
    visit ('/links/new')
    fill_in :title, with: 'Google'
    fill_in :url, with:  'https://www.google.co.uk/'
    click_button 'Submit'
    expect(page).to have_content('Google')
    expect(current_path).to eq '/links'
  end
end
