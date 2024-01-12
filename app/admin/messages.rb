ActiveAdmin.register Message do
  permit_params :admin_user, :room_id, :body

  index do
    selectable_column
    id_column
    column :user
    column :room_id
    column :body
    actions
  end

  form do |f|
    f.inputs 'Message Details' do
     
      f.input :user
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