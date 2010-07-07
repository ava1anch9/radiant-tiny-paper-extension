ActionController::Routing::Routes.draw do |map|
  map.with_options(:controller => 'admin/tiny_paper') do |asset|
    asset.images            "/admin/tiny_paper/images",                 :action => 'images'
    asset.images_sizes      "/admin/tiny_paper/:id/images_sizes",       :action => 'images_sizes'
    asset.files             "/admin/tiny_paper/files",                  :action => 'files'
    asset.pages             "/admin/tiny_paper/pages",                  :action => 'pages'
    asset.create            "/admin/tiny_paper/create",                 :action => 'create'
  end
end