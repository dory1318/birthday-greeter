feature 'Main page of birthday greeter' do
scenario 'has a welcoming header' do
  visit('/')
  expect(page).to have_content('Welcome Dear Visitor!')
end
end
