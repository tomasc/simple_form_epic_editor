module SimpleFormEpicEditor
  class EpicEditorInput < SimpleForm::Inputs::Base

    class << self

      # attr_accessor :configuration

      # def configure
      #   @configuration ||= Configuration.new
      #   yield @configuration
      # end

      # def configuration
      #   @configuration ||= Configuration.new
      # end

    end

    # =====================================================================

    # @return [String]
    def input
      template.content_tag :div, class: %w(epic_editor) do
        # toolbar + text_area
        text_area
      end
    end

    private # =============================================================

    # @return [String]
    def text_area
      @builder.text_area(attribute_name, input_html_options).html_safe
    end

  end
end