
feature 'User enters a number' do
  scenario 'User can enter a number which is returned' do
    visit('/')
    fill_in :enter_num, with: 3
    click_on "Convert"
    expect(page).to have_content "3"
  end
end

feature 'Number is converted to roman numeral' do
  scenario 'User can enter a number and see the converted numeral' do
    visit('/')
    fill_in :enter_num, with: 3
    click_on "Convert"
    expect(page).to have_content "III"
  end
end
