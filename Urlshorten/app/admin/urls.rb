ActiveAdmin.register Url do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index :download_links => false do
    selectable_column
    column "Url", :original
    column "Shorten", :random_id
    column "Count", :count
    actions
   end

   form do |f|
       f.inputs "Shorten Url" do
           f.input :original
            f.input :random_id
       end
   
       f.actions
     end

 show do
       attributes_table do
       row :original
       row :random_id
       row :count
           
       end
   end

end
