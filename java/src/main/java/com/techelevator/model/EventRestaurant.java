package com.techelevator.model;

import java.util.List;

public class EventRestaurant {

    private int eventID;
    private List<Integer> restaurantIDs;

    public EventRestaurant() { }

    public EventRestaurant(int eventID, List<Integer> restaurantIDs) {
        this.eventID = eventID;
        this.restaurantIDs = restaurantIDs;
    }

    public int getEventID() {
        return eventID;
    }

    public void setEventID(int eventID) {
        this.eventID = eventID;
    }

    public List<Integer> getRestaurantIDs() {
        return restaurantIDs;
    }

    public void setRestaurantIDs(List<Integer> restaurantIDs) {
        this.restaurantIDs = restaurantIDs;
    }
}