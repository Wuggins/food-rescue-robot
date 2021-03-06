
# should we show the detailed time options for locations
Webapp::Application.config.use_detailed_hours = true

Time::DATE_FORMATS[:clean_time] = lambda { |t| 
    format = (t.min==0) ? "%-I%p" : "%-I:%M%p"
    I18n.l t, :format => format,  :locale => :"en"
}
