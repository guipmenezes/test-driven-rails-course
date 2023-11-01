require "rails_helper"

feature "User marks todo incomplete" do
  scenario "Successfully" do
    sign_in

    create_todo("Example of Todo")

    click_on "Mark Complete"
    click_on "Mark Incomplete"

    expect(page).not_to display_complete_todo "Example of Todo"
    expect(page).to display_todo "Example of Todo"
  end
end
