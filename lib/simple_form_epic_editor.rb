require "simple_form_epic_editor/simple_form_epic_editor"
require "simple_form_epic_editor/version"

require "rails-assets-wysihtml5x"

# ---------------------------------------------------------------------

module SimpleForm
  class FormBuilder
    map_type :epic_editor, to: SimpleFormEpicEditor::EpicEditorInput
  end
end