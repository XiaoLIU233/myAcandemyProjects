package com.csye6225.fall2019.courseservice.service;

import java.util.ArrayList;
import java.util.List;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapper;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBScanExpression;
import com.csye6225.fall2019.courseservice.model.Announcement;
import com.csye6225.fall2019.courseservice.model.DynamoDbConnector;


public class AnnouncementService {
	static DynamoDbConnector dynamoDb;
    DynamoDBMapper mapper;
    
    public AnnouncementService() {
    	dynamoDb = new DynamoDbConnector();
    	dynamoDb.init();
    	mapper = new DynamoDBMapper(dynamoDb.getClient());  	
    }
    
    public List<Announcement> getAllAnnouncement(){
        return new ArrayList<>(mapper.scan(Announcement.class, new DynamoDBScanExpression()));
    }
    
    public Announcement getAnnouncement(String announcementId) {
    	return mapper.load(Announcement.class, announcementId);
    }
    
    public Announcement addAnnouncement(Announcement announcement) {
        mapper.save(announcement);
        return announcement;
    }
    
    public Announcement removeAnnouncement(String announcementId) {
    	Announcement a = getAnnouncement(announcementId);
    	mapper.delete(a);
    	return a;
    }
    
    public Announcement updateAnnouncement(Announcement announcement) {
    	removeAnnouncement(announcement.getAnnouncementId());
        mapper.save(announcement);
        return announcement;
    }
    
}
