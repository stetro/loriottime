module PhasesHelper
  def phase_back_link
    link_to raw('Zur&uuml;ck zur &Uuml;bersicht'), phases_path
  end

  def get_phase_selection f, phase
    ids = []
    ids << [raw("Phase ausw&auml;hlen"),nil]
    phase.each do |p|
      ids << [p.season,p.id]
    end
    f.select :phase_id , ids
  end

  def seasons
    seasons = Array.new
    (2012..2015).to_a.each do |y|
      seasons << raw("Fr&uuml;hling ")+y.to_s
      seasons << "Sommer "+y.to_s
      seasons << "Herbst "+y.to_s
      seasons << "Winter "+y.to_s
    end
    return seasons
  end
end
