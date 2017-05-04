def sign_in
  visit '/signup'
  fill_in 'email', with: 'Ana@something.com'
  fill_in 'password', with: 'password'
end
