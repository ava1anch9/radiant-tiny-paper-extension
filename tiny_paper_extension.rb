require_dependency 'application_controller'

class TinyPaperExtension < Radiant::Extension
  version "0.9"
  description "Radiand CMS Tiny MCE support using Paperclipped assets"
  url "http://blog.aissac.ro/radiant/tiny-paper-extension/"
  
  def activate
    TinyMceFilter
    Asset.class_eval { include TinyPaper::AssetExtensions }

    Admin::PagesController.class_eval { include TinyPaper::AddJavascriptsAndStyles }
  	admin.page.edit.add :part_controls, "tiny_mce_control"
  end
  
  def deactivate
  end
end
