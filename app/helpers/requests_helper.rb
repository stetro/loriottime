module RequestsHelper
  def request_back_link
    link_to 'Zurück zur &Uuml;bersicht', requests_path
  end

  def get_request_time phase,event
    str = ""
    if phase != nil
      str += Phase.find(phase).season
    end
    if event != nil
      str += " - "+Event.find(event).start.strftime("%d.%m %H:%M")
    end
    return str
  end

  def get_request_payed payed
    if payed
      return "bezahlt"
    else
      return "nicht bezahlt"
    end
  end
end
