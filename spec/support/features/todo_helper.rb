module Features
  def create_todo(todo_title)
    click_on "Create todo"
    fill_in "Title", with: todo_title
    click_on "Submit"
  end

  def display_todo(todo_title)
    have_css "h2", text: todo_title
  end

  def display_complete_todo(todo_title)
    have_css "h2.completed", text: todo_title
  end
end
