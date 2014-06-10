ActiveAdmin.register News do
  permit_params :title, :content, :image_url
end
