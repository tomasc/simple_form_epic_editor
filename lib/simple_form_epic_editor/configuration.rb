module SimpleFormEpicEditor
  class Configuration

    attr_accessor :commands

    # TODO: Make everything customizable!

    def initialize
      @commands = {
        toggle_editor: 'Write',
        toggle_preview: 'Preview'
      }
    end

  end
end