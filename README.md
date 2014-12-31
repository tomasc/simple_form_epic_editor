# Simple Form Epic Editor

[![Gem Version](https://badge.fury.io/rb/simple_form_epic_editor.svg)](http://badge.fury.io/rb/simple_form_epic_editor)

Integrates the markdown editor [Epic Editor](https://github.com/OscarGodson/EpicEditor) with Rails and [Simple Form](https://github.com/plataformatec/simple_form).

This gem adjusts the default theme of [Epic Editor](https://github.com/OscarGodson/EpicEditor) and places the toolbar above the editing field.

## Installation

Add this line to your application's Gemfile:

    gem 'simple_form_epic_editor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_form_epic_editor

To make it work you need to require the javascripts in `application.js`:

    //= require simple_form_epic_editor

## Usage

Use in forms:

    = form.input :body, as: :epic_editor

## Styling

Styling for the editor is separated into three files:

* base.css
* preview.css
* editor.css

The default styling can be overridden by adding your own version of any or all of the three files in `lib/assets/stylesheets/simple_form_epic_editor/default_theme/`

Alternatively you can configure the editor to use another [theme](#theme).

## Configuration

### Toolbar

You can change the default button texts in an initializer:

```Ruby
# config/initializers/simple_form_epic_editor.rb

SimpleFormEpicEditor::EpicEditorInput.configure do |c|
  c.commands = [
    @commands = {
      edit: 'Edit',
      preview: 'Render'
    }
  ]
end
```

### Theme

In the initializer you can assign any or all of the three stylesheets a new path:

```Ruby
# config/initializers/simple_form_epic_editor.rb

SimpleFormEpicEditor::EpicEditorInput.configure do |c|
  c.theme = {
    base: '/simple_form_epic_editor/your_theme_name/base.css',
    preview: '/simple_form_epic_editor/your_theme_name/preview.css',
    editor: '/simple_form_epic_editor/your_theme_name/editor.css'
  }
end
```

## Contributing

1. Fork it ( https://github.com/tomasc/simple_form_epic_editor/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
