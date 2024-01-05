ActiveAdmin.register User, as: 'Register_User' do

 
   permit_params :first_name, :last_name, :email, :encrypted_password, :contact, :address, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email
  
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
