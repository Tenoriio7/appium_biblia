Dado("que visualizo o menu principal") do
  @vendas = Lista_filmeScreen.new
  # sleep 3
  @vendas.palavra_do_dia
end

Quando("ompartilhar a palavra do dia") do
  @vendas.compartilhar_palavra
end

Então("vejo as opções de compartilhamento") do
@vendas.verificar_compartilhar
end
