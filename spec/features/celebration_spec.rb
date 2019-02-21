feature 'Birthday' do
  scenario 'greets you on your birthday' do
    visit('/')
    fill_in("name", with: "Dora")
    fill_in("day", with: '21')
    select("February", from: 'month')
    click_button("Let's see")
    expect(page).to have_content "Happy Birthday Dora!!"
  end

  scenario 'tells you it is not your birthday today' do
    visit('/')
    fill_in("name", with: "Dora")
    fill_in("day", with: '18')
    select("March", from: 'month')
    click_button("Let's see")
    expect(page).to have_content "Few day until your birthday"
  end
end
