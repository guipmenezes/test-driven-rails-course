require "rails_helper"

feature "User creates todo" do
  scenario "Successfully" do
    sign_in

    create_todo("Example of Todo")

    expect(page).to display_todo "Example of Todo"
  end
end
