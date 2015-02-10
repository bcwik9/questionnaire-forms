# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# taken from https://github.com/railscasts/196-nested-model-form-revised
# allows us to dynamically add questions to a questionnaire
# when a user clicks a link
jQuery ->
        $('form').on 'click', '.add_fields', (event) ->
                time = new Date().getTime()
                regexp = new RegExp($(this).data('id'), 'g')
                $(this).before($(this).data('fields').replace(regexp, time))
                event.preventDefault()

        $('#questionnaires').DataTable responsive: true

                
                
