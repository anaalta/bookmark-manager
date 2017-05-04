feature 'Confirming password' do
  scenario 'asks user to cofirm pass' do
    sign_in
    fill_in 'password_confirmation', with: 'pssword'
    click_button 'Submit'
    expect { sign_in }.to change(User, :count).by(0)
  end
end
