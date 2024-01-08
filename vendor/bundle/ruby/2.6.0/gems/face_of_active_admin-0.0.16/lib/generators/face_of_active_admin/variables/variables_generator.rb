module FaceOfActiveAdmin
  class VariablesGenerator < Rails::Generators::Base
     # source_root File.expand_path('../templates', __FILE__)
    source_root File.expand_path('../../../../../app/assets/', __FILE__)
    desc 'FaceOfActiveAdmin nice style theme variables installer'

    def copy_variables_file
      copy_file "stylesheets/face_of_active_admin/mixins/_variables.scss", 
                "app/assets/stylesheets/face_of_active_admin_variables.scss"
    end
  end
end
