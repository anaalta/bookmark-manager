feature 'Confirming password' do
  scenario 'asks user to cofirm pass' do
    sign_in
    fill_in 'password_confirmation', with: 'pssword'
    click_button 'Submit'
    expect { sign_in }.to change(User, :count).by(0)
    expect(current_path).to eq '/signup'
    expect(page).to have_content("Password and confirmation do not match")
  end
end
