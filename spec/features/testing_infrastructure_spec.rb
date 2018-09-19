#
# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit ('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Name fill in form' do
  scenario 'Fill names into form, submit and see entered data' do
    visit ('/')
    fill_in :player_1_name, with: "Amy"
    fill_in :player_2_name, with: "Bob"
    click_button 'SUBMIT FOOL'
    expect(page).to have_content "Amy vs Bob"
  end
end
