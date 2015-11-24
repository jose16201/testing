class Driver < ActiveRecord::Base
  belongs_to :car
  def auto_placa   
    self.car.Placa 
  end
end
