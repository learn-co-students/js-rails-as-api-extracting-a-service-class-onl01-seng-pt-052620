class SightingSerializer
    def initialize(sighting_object)
        @sighting = sighting_object
    end  
# initialize will wake in whatever variable we're dealing with in a particular action, 
# and store it as an instance variable. 
    def to_serialized_json
        options = {
            include: {
                bird: {
                    only: [:name, :species]
                },
            location: {
                only: [:latitude, :longitude]
            } 
        },
        except: [:updated_at], 
    }
        @sighting.to_json(options)
    #     @sighting.to_json(:include => {
    #         :bird => {:only => [:name, :species]},
    #         :location => {:only => [:latitude, :longitude]}},
    #         :except => [:updated_at])
    # end 
    
    #With this setup once an instance of SightingSerializer is created, we can call to_serialized_json on it to get our data customized and ready to go as a JSON string.  
end 
