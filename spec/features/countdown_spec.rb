feature 'Birthday' do
  scenario 'counts down till your birthday' do
    visit('/countdown')
    expect(page).to have_content "Few day until your birthday"
  end
end
