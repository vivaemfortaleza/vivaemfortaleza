class HorarioEstabelecimento < ActiveRecord::Base
  has_one :estabelecimento
  before_save :converter_tempo
  after_find :setar_horas

  private
    def converter_tempo
      self.hora_inicial = hora_inicial.to_time
      self.hora_final = hora_final.to_time
    end

    def hora_valida?(hora)
      begin
        hora.to_time
      rescue ArgumentError
        false
      end
    end

    def validar_hora
      errors.add("O campo Hora Inicial está invalido") unless hora_valida(self.hora_inicial)
      errors.add("O campo Hora Final está invalido") unless hora_valida(self.hora_final)

      converter_tempo
      errors.add("A Hora inicial deve ser antes da hora final") unless self.hora_inicial < self.hora_final
    end

    def setar_horas
      self.hora_inicial = self.hora_inicial.strftime("%H:%M")
      self.hora_final = self.hora_final.strftime("%H:%M")
    end

end
