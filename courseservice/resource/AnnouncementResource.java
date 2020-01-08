package com.csye6225.fall2019.courseservice.resource;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.csye6225.fall2019.courseservice.model.Announcement;
import com.csye6225.fall2019.courseservice.service.AnnouncementService;

@Path("/announcements")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class AnnouncementResource {
	AnnouncementService announcementService = new AnnouncementService();
	
	@GET
	public List<Announcement> getAnnouncement() {
		return announcementService.getAllAnnouncement();
	}
	
	@GET
	@Path("/{announcementId}")
	public Announcement getAnnouncement(@PathParam("announcementId") String announcementId) {
		return announcementService.getAnnouncement(announcementId);
	}
	
	@PUT
	@Path("/{announcementId}")
	public Announcement updateAnnouncement(@PathParam("announcementId") String announcementId, Announcement announcement) {
		announcement.setAnnouncementId(announcementId);
		return announcementService.updateAnnouncement(announcement);
	}
		
	@POST
	public Announcement addAnnouncement(Announcement announcement) {
		return announcementService.addAnnouncement(announcement);
	}
	
	@DELETE
	@Path("/{announcementId}")
	public void deleteProgram(@PathParam("announcementId") String announcementId) {
		announcementService.removeAnnouncement(announcementId);
	}
	
}
