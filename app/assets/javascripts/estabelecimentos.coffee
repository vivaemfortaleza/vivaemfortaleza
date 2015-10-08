# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
deleteImagem = () ->
  if(confirm("Deseja realmente excluir esta imagem?"))
    id = parseInt($(this).attr("imagem-id"));
    form = $(this).closest('form')
    element = $(this).closest('.col-md-4');
    form.append($("<input type='hidden' name='imagens_removidas[]'/>").val(id));
    $(element).remove();

load = ->
  console.log "Passando por aqui"
  $(".delete-imagem").click(deleteImagem)

$(document).ready(load);
$(document).on('page:load', load)
