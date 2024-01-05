ActiveAdmin.register Subcategory do
  permit_params :category_id, :subcategory_name, :description, :picture, :price

  index do
    selectable_column
    id_column
  
    column :category_name do |obj|
      category = Category.find_by(id: obj.category_id)
      category&.category_name
  end
    column :subcategory_name
    column :description
    column :picture do |subcategory|
      image_tag(subcategory.picture.url, height: '50') if subcategory.picture.present?
    end
    column :price
    actions
  end

  form do |f|
    f.inputs 'Subcategory Details' do
      f.input :category, as: :select, collection: Category.all.map { |c| [c.category_name, c.id] }
      f.input :subcategory_name
      f.input :description
      f.input :picture, as: :file, hint: (f.object.picture.present? ? image_tag(f.object.picture.url, height: '100') : content_tag(:span, 'Upload a picture'))
      f.input :price
    end
    f.actions
  end
end