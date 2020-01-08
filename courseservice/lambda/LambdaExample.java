package com.csye6225.fall2019.courseservice.lambda;

import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.dynamodbv2.AmazonDynamoDB;
import com.amazonaws.services.dynamodbv2.AmazonDynamoDBClientBuilder;
import com.amazonaws.services.dynamodbv2.document.DynamoDB;
import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import com.amazonaws.services.lambda.runtime.events.DynamodbEvent;
import com.amazonaws.services.lambda.runtime.events.DynamodbEvent.DynamodbStreamRecord;
import com.amazonaws.services.sns.AmazonSNS;
import com.amazonaws.services.sns.AmazonSNSClientBuilder;
import com.amazonaws.services.sns.model.SubscribeRequest;

public class LambdaExample implements RequestHandler<DynamodbEvent, Integer> {

	private static AmazonSNS SNS_CLIENT = AmazonSNSClientBuilder.standard()
			.withCredentials(DefaultAWSCredentialsProviderChain.getInstance()).withRegion(Regions.US_WEST_2).build();
	private static AmazonDynamoDB DDB_CLIENT = AmazonDynamoDBClientBuilder.standard()
			.withCredentials(DefaultAWSCredentialsProviderChain.getInstance()).withRegion(Regions.US_WEST_2).build();
	private static DynamoDB ddb = new DynamoDB(DDB_CLIENT);
	private static final String TOPIC_PREFIX = "NotificationForCourse-";
	
    @Override
    public Integer handleRequest(DynamodbEvent event, Context context) {
        context.getLogger().log("Received event: " + event);

        for (DynamodbStreamRecord record : event.getRecords()) {
            context.getLogger().log(record.getEventID());
            context.getLogger().log(record.getEventName());
            context.getLogger().log(record.getDynamodb().toString());
        }
        return event.getRecords().size();
    }
    
    public void subscribe(String topicArn, String email) {
		SNS_CLIENT.subscribe(new SubscribeRequest(topicArn, "email", email));
		System.out.println("a new subscribe for topic: {email: " + email + ", topicArn: " + topicArn);
	}
}