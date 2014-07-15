module SimpleFormEpicEditor
  class EpicEditorInput < SimpleForm::Inputs::Base

    class << self

      attr_accessor :configuration

      def configure
        @configuration ||= Configuration.new
        yield @configuration
      end

      def configuration
        @configuration ||= Configuration.new
      end

    end

    # =====================================================================

    # @return [String]
    def input
      toolbar + text_area + editor
    end

    private # =============================================================

    # Array of commands for text area toolbar, arranged into command groups.
    # @return [Hash]
    def command_list
      options[:commands] || SimpleFormEpicEditor::EpicEditorInput.configuration.commands
    end

    def editor
      template.content_tag :div, '', class: %w(editor)
    end

    # @return [String]
    def text_area
      @builder.text_area(attribute_name, input_html_options).html_safe
    end

    # @return [String]
    def toolbar
      template.content_tag :div, class: 'toolbar' do
        commands
      end.html_safe
    end

    # @return [String]
    def commands
      template.content_tag :ul, class: 'commands' do
        command_list.map do |c, t|
          command(c, t)
        end.flatten.join.html_safe
      end
    end

    def command(c, t)
      template.content_tag :li, class: c.to_s.underscore.downcase, :"data-toggle" => c.to_s do
        template.content_tag :span, t.to_s
      end
    end

  end
end