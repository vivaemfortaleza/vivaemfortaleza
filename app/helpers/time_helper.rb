module TimeHelper

  def to_hora(time)
    DateTime.strptime(time, "%H:%M")
  end

end
