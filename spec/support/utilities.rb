def full_title(page_title)
  base_title = "Task Manager"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def sign_in(user)
  visit sign_in_path
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  # Вход без Capybara.
  cookies[:remember_token] = user.remember_token
end
