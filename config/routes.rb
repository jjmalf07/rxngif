Rxngif::Application.routes.draw do
  get("/picture_details/:id", { :controller => "pictures", :action => "show" })
  get("/all_pictures", { :controller => "pictures", :action => "index" })
  get("/new_picture_form", { :controller => "pictures", :action => "new" })
  get("/create_picture", { :controller => "pictures", :action => "create" })
  get("/delete_picture/:id", { :controller => "pictures", :action => "destroy" })
  get("/edit_picture_form/:id", { :controller => "pictures", :action => "edit" })
  get("/update_picture/:id", { :controller => "pictures", :action => "update" })
end
