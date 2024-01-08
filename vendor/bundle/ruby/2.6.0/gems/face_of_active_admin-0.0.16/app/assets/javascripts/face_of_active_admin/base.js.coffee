$(document).on 'ready page:load', ->
  $(document).on 'focus', 'input.datepicker:not(.hasDatepicker)', ->
    input = $(@)

    # Only create datepickers in compatible browsers
    return if input[0].type is 'date'
    console.log input
    input.datepicker( "option", "dateFormat", "dd-mm-yy" )
    # defaults = dateFormat: 'dd-mm-yy'
    # options  = input.data 'datepicker-options'
    # input.datepicker $.extend(defaults, options)
  

  $('.datepicker:not(.hasDatepicker)').each ->
    if $(@).val().length > 0
      p = $(@).val().split('-')
      $(@).val("#{p[2]}-#{p[1]}-#{p[0]}") 

  change_to_icon('.view_link', 'eye')
  change_to_icon('.delete_link', 'trash')
  change_to_icon('.edit_link', 'pencil')


# klass is class of group, icon_klass is icon name from font awesome
change_to_icon = (klass, icon_name) ->
  buttons = $(klass)
  $.each buttons, (_, button) ->
    button.text = ''
    $(button).addClass(klass+'_image fa fa-'+icon_name)

