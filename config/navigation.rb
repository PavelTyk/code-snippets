SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'
  navigation.items do |primary|
    primary.item :new_snippet, 'New Snippet', new_my_snippet_path, :if => Proc.new { current_user }
    primary.item :snippets, 'My Snippets', my_snippets_path, :if => Proc.new { current_user }
    primary.item :profile, 'Edit Profile', edit_profile_path, :if => Proc.new { current_user }
    primary.item :login, 'Login', login_path, :if => Proc.new { !current_user }, :title => 'Login or Register'
    primary.item :logout, 'Logout', logout_path, :if => Proc.new { current_user }

    primary.dom_class = 'top-navigation'
  end
end
