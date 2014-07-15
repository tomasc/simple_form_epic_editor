module SimpleFormEpicEditor
  class Configuration

    attr_accessor :commands, :theme

    # TODO: Make everything customizable!

    def initialize
      @commands = {
        edit: 'Write',
        preview: 'Preview'
      }
      @theme = {
        base: '/simple_form_epic_editor/default_theme/base.css',
        preview: '/simple_form_epic_editor/default_theme/preview.css',
        editor: '/simple_form_epic_editor/default_theme/editor.css'
      }
    end

  end
end