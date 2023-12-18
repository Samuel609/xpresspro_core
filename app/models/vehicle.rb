class Vehicle < ApplicationRecord
    CAR = "Car".freeze
    VAN = "Van".freeze
    MINIBUS = "Minibus".freeze
    PRESTIGE = "Prestige".freeze

    CONVERTIBLE = "Convertible".freeze
    COUPE = "Coupe".freeze
    EXOTIC_CAR = "Exotic Cars".freeze
    HATCH_BACK = "Hatch Back".freeze
    MINIVAN = "Mini Van".freeze
    TRUCK = "Truck".freeze
    SEDAN = "Sedan".freeze
    SPORTS_CAR = "Sports Car".freeze
    STATION_WAGON = "Station Wagon".freeze
    WAGON = "Wagon".freeze
    
    CARBODYTYPE = [CONVERTIBLE, COUPE, EXOTIC_CAR, HATCH_BACK, MINIVAN, TRUCK, TRUCK, SEDAN, SPORTS_CAR, STATION_WAGON, WAGON]
    VEHICLETYPE = [CAR, VAN, MINIBUS, PRESTIGE].freeze
    validates :vehicle_name, :vehicle_model, :price_per_day, :person_capacity, :weightcapacity, :luggage_capacity, :sideview, :backview, :frontview, presence: true
    validates :price_per_day, :person_capacity, :luggage_capacity, :weightcapacity, numericality: { greater_than: 0
}
    validates :VehicleType, inclusion: {in: VEHICLETYPE}, presence: true
    validates :CarBodyType, inclusion: {in: CARBODYTYPE}, presence: true


end
