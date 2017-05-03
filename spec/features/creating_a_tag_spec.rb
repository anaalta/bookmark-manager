feature "Creating tags" do
  scenario "user tags a link" do
    visit ('/links/new')
    fill_in :title, with: 'Google'
    fill_in :url, with:  'https://www.google.co.uk/'
    fill_in :tags, with: 'anything'

    click_button 'Submit'
    link = Link.first
    expect(link.tags.map(&:name)).to include('anything')
  end
end
