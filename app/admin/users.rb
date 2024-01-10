ActiveAdmin.register User, as: 'RegisteredUser' do
  permit_params :first_name, :last_name, :email, :contact, :address

  actions :index, :show, :destroy

  scope "All", default: true do |users|
    users
  end

  scope "Last Month" do |users|
    users.where("created_at >= ? AND created_at <= ?", 1.month.ago.beginning_of_month, 1.month.ago.end_of_month)
  end

  scope "Current Month" do |users|
    users.where("created_at >= ? AND created_at <= ?", Date.today.beginning_of_month, Date.today.end_of_month)
  end


  scope "Today" do |users|
    users.where("created_at >= ? AND created_at <= ?", Date.today.beginning_of_day, Date.today.end_of_day)
  end

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :contact
    column :address
    
    # Add more columns as needed
    actions
  end

  form do |f|
    f.inputs "User Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :contact
      f.input :address
      # Add more inputs as needed
    end
    f.actions
  end
end
