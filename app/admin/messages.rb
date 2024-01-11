ActiveAdmin.register Message do
  permit_params :admin_user, :room_id, :body

  index do
    selectable_column
    id_column
    column :admin_user
    column :room_id
    column :body
    actions
  end

  form do |f|
    f.inputs 'Message Details' do
      if current_admin_user
        f.input :user, input_html: { value: current_admin_user.id }, as: :hidden
        f.li "Posted by: #{current_admin_user.email}"
      else
        f.input :user
      end
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