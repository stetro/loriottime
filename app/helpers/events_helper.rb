module EventsHelper
  def event_back_link
    link_to 'Zur&uuml;ck zur &Uuml;bersicht', events_path
  end

  def get_events_selection f,events
    puts events
    ids = []
    ids << ["Auftritt ausw&auml;hlen",nil]

    events.each do |e|
      ids << [(e.start.strftime("%d.%m %H:%M")),e.id]
    end

    f.select :event_id , ids
  end

  def get_season id
    return Phase.find(id).season
  end
end
