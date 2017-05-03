feature "creates a tag" do
  scenario "user tags a link" do
    visit ('/links/new')
    fill_in :title, with: 'Google'
    fill_in :url, with:  'https://www.google.co.uk/'
    fill_in :tag, with: 'Ask anything'
    click_button 'Submit'
    expect(page).to have_content('Tag: Ask anything')
  end
end
