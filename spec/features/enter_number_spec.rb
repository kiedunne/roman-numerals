
feature 'Test number entry' do
  scenario 'Can enter a number' do
    visit('/')
    fill_in :enter_num, with: 3
    click_on "Convert"
    expect(page).to have_content "III"
  end
end
