require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see others todos" do
    Todo.create!(title: "Buy milk", email: "someone_else@email.com")

    sign_in_as "someone_else@email.com"

    expect(page).not_to display_todo "Exmaple of Todo"
  end
end
