class Lista_filmeScreen
  def initialize
    @btn_palavra = 'llPalavraDia'
    @compartilhar = 'btnCompartilhar'
    @grid_compartilhar= 'grdShare'
  end
  def palavra_do_dia
    wait_true { exists { find_element(id: @btn_palavra) } }
    find_element(id: @btn_palavra).click
  end
  def compartilhar_palavra
    wait_true { exists { find_element(id: @compartilhar) } }
    find_element(id: @compartilhar).click
    
  end

  def verificar_compartilhar
    binding.pry
   fail "Compartilhar nao encontrado" unless find_elements(id: @grid_compartilhar).displayed?
  end 

end
