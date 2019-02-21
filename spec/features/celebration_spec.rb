feature 'Birthday' do
  scenario 'greets you on your birthday' do
    visit('/')
    fill_in("name", with: "Dora")
    click_button("Let's see!")
    expect(page).to have_content "Happy Birthday Dora!!"
  end
end
