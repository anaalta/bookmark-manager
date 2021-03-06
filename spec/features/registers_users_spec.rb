feature 'Registers users' do

  scenario 'a new user registers to the website' do
    visit '/signup'
    fill_in 'email', with: 'Ana@something.com'
    fill_in 'password', with: 'password'
    fill_in 'password_confirmation', with: 'password'
    click_button 'Submit'
    expect(current_path).to eq '/links'
    expect(page).to have_content('Welcome to your bookmark manager, Ana@something.com!')
    expect{User.create}.to change{User.last.id}.by(1)
  end
end
