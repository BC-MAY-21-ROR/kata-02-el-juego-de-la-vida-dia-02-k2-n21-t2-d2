# frozen_string_literal: true

# Class to generate celulas and use their status.
class Celula
  def initialize(cell_status)
    @cell_status = cell_status
  end

  def kill_celula
    @cell_status = 0
  end

  def revive_celula
    @cell_status = 1
  end

  def celula_status
    case @cell_status
    when 0
      '.'
    when 1
      '*'
    end
  end
  # accessor get and set method
  attr_reader :cell_status
end
