
class DistanceCalc

  R = 6378100   # radius of the earth in m

  def self.distance(lat1, lon1, lat2, lon2)
    # https://stackoverflow.com/a/27943

    dLat = self.deg2rad(lat2 - lat1)
    dLon = self.deg2rad(lon2 - lon1)
    a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
      Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
      Math.sin(dLon / 2) * Math.sin(dLon / 2)
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
    R * c  # distance in m
  end

  def self.deg2rad(d)
    d * Math::PI / 180
  end
end

class EventLocator

  def findEventsNear(lat, lon, maxDist=5000)
    events = []

    def initialize(eventList)
      @eventList = eventList
    end

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f

      if DistanceCalc.distance(lat, lon, elat, elon) < maxDist
        events << event
      end
    }
    
    events
  end

  def findEarthquakesNear(cityName)
    cityRecord = nil

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f

      if type == "city" && name == cityName
        cityRecord = event
      end
    }

    if cityRecord.nil?
      return nil
    end

    name, type, clat, clon = cityRecord.split(":")
    clat = clat.to_f
    clon = clon.to_f

    events = []

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f

      if type == "earthquake"
        if DistanceCalc.distance(elat, elon, clat, clon) < 5000
          events << event
        end
      end
    }

    events
  end

end

class Events < EventLocator
  def initialize(eventList)
    @eventList = eventList
  end
  def addVolcanoEvent(name, lat, lon, time)
    @eventList << "#{name}:volcano:#{lat}:#{lon}:#{time}"
  end

  def addEarthquakeEvent(name, lat, lon, time)
    @eventList << "#{name}:earthquake:#{lat}:#{lon}:#{time}"
  end

  def addGeyser(name, lat, lon, time)
    @eventList << "#{name}:geyser:#{lat}:#{lon}:#{time}"
  end

  def addHotspring(name, lat, lon)
    @eventList << "#{name}:hotspring:#{lat}:#{lon}:-1"
  end

  def addFumarole(name, lat, lon)
    @eventList << "#{name}:fumarole:#{lat}:#{lon}:-1"
  end

  def addCity(name, lat, lon)
    @eventList << "#{name}:city:#{lat}:#{lon}:-1"
  end
end

starting_events = [
  "some volcano:volcano:40.12120:-121.3455:21451",
  "some earthquake:earthquake:40.51230:-121.23425:87153",
  "another earthquake:earthquake:39.23890:-120.23985:17354",
  "yet another earthquake:earthquake:39.23223:-120.23125:16524",
  "another volcano:volcano:43.32890:-122.3289:23856",
  "a geyser:geyser:39.23223:-120.23125",
  "Townville:city:44.05645:-121.30812"
]

em = Events.new(starting_events)

em.addHotspring("my favorite hotspring", 46.1231, -115.23234)
em.addCity("Cityton", 40.5232, -121.23453)
em.addVolcanoEvent("yet another volcano", 15.52232, -107.03521, 256923)

x = em.findEventsNear(40.5, -121.2, 163000)
pp x

puts "------------------------"

x = em.findEarthquakesNear("Cityton")
pp x

# PART 1
# it finds where natural distaters occured using latitude and longitude

# PART 2
# 1. this class has much more than one responsibility like distance calculations, location calculations, and information gathering
# 2. there is map data, event data, calc data, and so on 
# 3. there are 3 differnt levels of abstraction