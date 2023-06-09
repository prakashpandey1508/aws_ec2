ActiveAdmin.register Comment do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :content, :commentable_type, :commentable_id, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:content, :commentable_type, :commentable_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


  scope :all
  scope :property, :default => true do |like|
    Comment.property
  end
  scope :agent, :default => true do |like|
    Comment.agent
  end
  








  
end
