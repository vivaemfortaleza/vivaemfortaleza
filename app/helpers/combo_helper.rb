module ComboHelper

  def combo_dias_semana(form,prop)
    form.select prop,
                options_for_select(dias_semana.invert.to_a, form.object[prop]),
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
