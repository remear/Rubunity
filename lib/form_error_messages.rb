require 'action_view/helpers'

module ActionView
  module Helpers
    module FormErrorMessages
      module FormBuilderMethods
        def error_messages
          output = ''
          if @object.errors.any?
            output << '<div id="flash" class="error">
                          <div id="icon"></div>
                          <div id="message">
                            <h2>Error!</h2>
                            <ul>'
            @object.errors.full_messages.each do |msg|
              output << "<li>#{msg}</li>"
            end
            output << '</ul>'
            output << '</div>'
            output << '</div>'

          end
          output.html_safe
        end
      end
    end
    
    class FormBuilder
      include FormErrorMessages::FormBuilderMethods
    end
  end
end