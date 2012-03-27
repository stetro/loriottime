module PeopleHelper
  def people_back_link
    link_to 'Zur&uuml;ck zur &Uuml;bersicht', people_path
  end

  def  person_name id
    person =Person.find(id)
    return person.name+" "+person.surname
  end

  def get_people_selection f,people
    ids = []
    ids << ["Person ausw&auml;hlen",nil]

    people.each do |p|
      ids << [(p.surname+", "+p.name+" - "+p.city),p.id]
    end

    f.select :person_id , ids
  end
end
