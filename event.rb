require 'time'
class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date_save, duration_to_save, title_to_save, attendees_to_save)
        @start_date = Time.parse(start_date_save)
        @duration = duration_to_save
        @title = title_to_save
        @attendees = attendees_to_save
        puts" ca marche ?"
    end

    def postpone_24h
        return @start_date + 24*60*60
    end
    
    def end_date
        return @star_daye + @duration
    end

    def is_past?
        if @start_date < Time.now 
            return "past"
        else
            return "pas encore"
        end
    end


    def is_future?
        if @start_date > Time.now 
            return "future"
        else
            return "past"
        end
    end

    def is_soon?
        time_left = Time.now - @start_date
        if time_left <= 30
            return "c'est bientot"
        elsif time_left > 0
            return "c'est deja passé"
        else 
            return "cest pas bientot"
        end
    end
        
    def to_s
        def to_s
            puts ">Titre : #{@title}"
            puts ">Date de début : #{@start_date}"
            puts ">Durée : #{@duration} minutes"
            print ">Invités :"
            puts @attendees.join(", ")
    end

end
