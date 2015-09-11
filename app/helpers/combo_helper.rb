module ComboHelper

  def combo_dias_semana(id, modelo)
    select id, modelo,
               options_for_select(dias_semana.invert.to_a),
               {},
               {class: "form-control"}
  end

  def dias_semana
    {
      10 => "Segunda a Sexta",
      11 => "Segunda a Sábado",
      12 => "Domingo a Domingo",
      0 => "Domingo",
      1 => "Segunda-Feira",
      2 => "Terça-Feira",
      3 => "Quarta-Feira",
      4 => "Quinta-Feira",
      5 => "Sexta-Feira",
      6 => "Sábado"
    }
  end

end
