module RequestsHelper
  def request_back_link
    link_to raw('Zur&uuml;ck zur &Uuml;bersicht'), requests_path
  end

  def get_request_payed payed
    if payed
      return "bezahlt"
    else
      return "nicht bezahlt"
    end
  end
  
  def get_request_status event_id
    if event_id != nil  
      return image_tag "icons/reserved.png",{:width=>20,:alt => "Reserviert !"}
    else 
      return image_tag "icons/not_reserved.png",{:width=>20,:alt => "Nicht Reserviert !"}
    end
  end
end
