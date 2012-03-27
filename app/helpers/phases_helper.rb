module PhasesHelper
  def phase_back_link
    link_to 'Zurück zur Übersicht', phases_path
  end

  def get_phase_selection f, phase
    ids = []
    ids << ["Phase auswählen",nil]
    phase.each do |p|
      ids << [p.season,p.id]
    end
    f.select :phase_id , ids
  end

  def seasons
    seasons = Array.new
    (2012..2015).to_a.each do |y|
      seasons << "Frühling "+y.to_s
      seasons << "Sommer "+y.to_s
      seasons << "Herbst "+y.to_s
      seasons << "Winter "+y.to_s
    end
    return seasons
  end
end
