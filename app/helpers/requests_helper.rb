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
end
