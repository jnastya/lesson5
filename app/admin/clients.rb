ActiveAdmin.register Client do

    permit_params :name, :last_name, :email, :phone

end
