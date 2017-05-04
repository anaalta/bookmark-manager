feature 'Adding multiple tags' do

  scenario 'add more tags to a link' do
    visit '/links/new'
    fill_in 'title', with: 'Makers Academy'
    fill_in 'url', with: 'http://www.makersacademy.com/'
    fill_in 'tags', with: 'education ruby'
    click_button 'Submit'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education', 'ruby')
  end

end
