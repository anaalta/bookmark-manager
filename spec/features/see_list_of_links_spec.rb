
feature 'viewing links' do
  scenario 'user views a list of links' do
    Link.create(url: 'http://makersacademy.com', title: 'Makers Academy')
    visit '/links'
    expect(page.status_code).to eq 200
    #expect(page).to have_content('Makers Academy')
  end
end
