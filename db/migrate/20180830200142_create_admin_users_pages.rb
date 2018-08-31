class CreateAdminUsersPages< ActiveRecord::Migration[5.0]

  def up
    create_table :admin_users_pages, :id => false do |t|
      t.integer "admin_user_id"
      t.integer "page_id"
    end
    add_index("admin_users_pages", ["admin_user_id", "page_id"])
  end

  def down
    drop_table :admin_users_pages
  end

end

# <h1>Create an Employee</h1>

# <%= form_for([@company, @employee]) do |f| %>
#   <label>First name</label>
#   <%= f.text_field :first_name %><br>
#   <label>Last name</label>
#   <%= f.text_field :last_name %><br>
#   <label>Email</label>
#   <%= f.text_field :email %> @<%= @company.name.tr(' ','').downcase%>.com  <br>

# <%= f.collection_select :department_id, @depts, :id, :name, { include_blank: true } %>

# <p>
#   <%= f.submit 'Create Employee' %>
# </p>
# <% end %>
