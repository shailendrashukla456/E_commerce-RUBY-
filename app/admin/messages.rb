ActiveAdmin.register Message do
  permit_params :user_id, :room_id, :body, :admin_user_id

  index do
    selectable_column
    id_column
    column :user
    column :admin_user
    column :room do |obj|
      category = Room.find_by(id: obj.room_id)
      category&.name
  end
    column :body
    actions
  end

  form do |f|
    f.inputs 'Message Details' do
     
      f.input :admin_user,as: :select, collection: AdminUser.all.map { |admin_user| [admin_user.email, admin_user.id] }
      f.input :room, as: :select, collection: Room.all.map { |room| [room.name, room.id] }
      f.input :body
    end
    f.actions
  end

  controller do
    def create
      super do |format|
        redirect_to admin_messages_path and return if resource.valid?
      end
    end
  end
end