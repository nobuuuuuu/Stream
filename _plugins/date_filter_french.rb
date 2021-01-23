# coding: utf-8
module Jekyll
  module DateFilterFrench
    MONTHS = {"01" => "janvier",
              "02" => "février",
              "03" => "mars",
              "04" => "avril",
              "05" => "mai",
              "06" => "juin",
              "07" => "juillet",
              "08" => "août",
              "09" => "septembre",
              "10" => "octobre",
              "11" => "novembre",
              "12" => "décembre"
             }

    def date_to_french(date)
      day = time(date).strftime("%e")
      month = time(date).strftime("%m")
      year = time(date).strftime("%Y")
      day + ' ' + MONTHS[month] + ' ' + year
    end

    def date_to_french_with_time(date)
      day = time(date).strftime("%e")
      month = time(date).strftime("%m")
      year = time(date).strftime("%Y")
      heure = time(date).strftime("%H")
      minute = time(date).strftime("%M")
      seconde = time(date).strftime("%S")
      day + ' ' + MONTHS[month] + ' ' + year + ' ' + heure + ':' + minute + ':' + seconde
    end
  end
end

Liquid::Template.register_filter(Jekyll::DateFilterFrench)