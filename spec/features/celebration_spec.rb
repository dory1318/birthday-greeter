feature 'Birthday' do
  scenario 'greets you on your birthday' do
    visit('/')
    click_button("Let's see!")
    expect(page).to have_content "Happy Birthday!!"
  end
end
