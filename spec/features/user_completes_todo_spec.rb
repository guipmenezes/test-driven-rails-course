require "rails_helper"

feature "User completes todo" do
  scenario "Successfully" do
    sign_in

    create_todo("Example of Todo")

    click_on "Mark Complete"

    expect(page).to display_complete_todo "Example of Todo"
  end
end
