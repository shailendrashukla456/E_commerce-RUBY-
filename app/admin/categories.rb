ActiveAdmin.register Category do

 
   permit_params :category_name, :picture, :total_item
  
   index do
    selectable_column
    id_column
    column :category_name
    
    column :picture do |category|
      image_tag(category.picture.url, height: '50') if category.picture.present?
    end
    column :total_item do |category|
      category.subcategories.count
    end
    actions
  end

  form do |f|
    f.inputs 'Category Details' do
      f.input :category_name
      f.input :picture, as: :file, hint: (f.object.picture.present? ? image_tag(f.object.picture.url, height: '100') : content_tag(:span, 'Upload a picture'))
    end
    f.actions
  end



  
end