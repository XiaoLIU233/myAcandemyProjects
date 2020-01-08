import java.sql.ResultSet;  
import java.sql.SQLException;

	  
	public class Demo {  
		
	    static String sql = null;  
	    static String sql1 = null; 
	    static String sql2 = null;  
	    static String sql3 = null; 
	    static String sql4 = null; 
	    static String sql5 = null; 
	    static String sql6 = null; 
	    static String sql7 = null; 
	    static String sql8 = null; 
	    static String dis1 = null;
	    static String dis2 = null;
	    static String dis3 = null;
	    static String lineId = null;
	    static DBHelper db1 = null;  
	    static DBHelper db2 = null;  
	    static DBHelper db3 = null;  
	    static DBHelper db4 = null;  
	    static DBHelper db5 = null;  
	    static DBHelper db6 = null;  
	    static DBHelper db7 = null;  
	    static DBHelper db8 = null;  
	    static DBHelper db = null;  
	    static ResultSet ret = null;  
	    static String ans = null;
	    static int name = 0;

	    //To find the corresponding line
	    public String changeName(String nameS){
	    	name = Integer.parseInt(nameS);
	    	if (name == 1){
	    		return "1";
	    	}
	    	else if (name == 2){
	    		return "2";
	    	}
	    	else if (name == 3){
	    		return "4";
	    	}
	    	else if (name == 4){
	    		return "5";
	    	}
	    	else if (name == 5){
	    		return "6";
	    	}
	    	else if (name == 6){
	    		return "7";
	    	}
	    	else if (name == 7){
	    		return "8";
	    	}
	    	else if (name == 8){
	    		return "9";
	    	}
	    	else if (name == 9){
	    		return "10";
	    	}
	    	else if (name == 10){
	    		return "13";
	    	}
	    	else if (name == 11){
	    		return "14";
	    	}
	    	else if (name == 12){
	    		return "14";
	    	}
	    	else if (name == 13){
	    		return "15";
	    	}
	    	else if (name == 14){
	    		return " Fangshan";
	    	}
	    	else if (name == 15){
	    		return " Changping";
	    	}
	    	else if (name == 16){
	    		return " Yizhuang";
	    	}
	    	else if (name == 17){
	    		return " Airport";
	    	}
	    	else {
	    		return "Fail";
	    	}
	    }

	  
	    public void query(String startAtt,String stopAtt) {
	    	
	    	String a="'";
	    	String b="'";
	    	startAtt = a+startAtt+b;
	    	stopAtt = a+stopAtt+b;
	    	
	    	//sql codes
	        sql = "call railway.qqqqqq("+startAtt+","+stopAtt+");"; 
	        sql1 = "Select * from Straight;";
	        sql2 = "Select * from Once order by totalDis;";
	        sql3 = "Select * from Twice order by totalDis;";
	        sql4 = "Select * from Triple order by totalDis;";
	        sql5 = "Select min(totalDis) from Once;";
	        sql6 = "select min(totalDis) from Twice;";
	        sql7 = "select min(totalDis) from Triple;";
	        
	        //New DBHelper
	        db = new DBHelper(sql);
	        db1 = new DBHelper(sql1);
	        db2 = new DBHelper(sql2); 
	        db3 = new DBHelper(sql3);
	        db4 = new DBHelper(sql4);
	        db5 = new DBHelper(sql5);
	        db6 = new DBHelper(sql6);
	        db7 = new DBHelper(sql7);
	        
	       
	        try {  
	        	ret = db.pst.executeQuery();//Statement execution, obtains the result set
	        	
	            ret = db1.pst.executeQuery();//Statement execution, obtains the result set
	            System.out.println("Staright");
	            //find Staright
	            while (ret.next()) {  
	                lineId = ret.getString(1);  
	                String totalDis = ret.getString(2);  
	                System.out.println(lineId + "\t" + totalDis + "\t" );  
	            }//Show data
	            ret = db2.pst.executeQuery();//Statement execution, obtains the result set
	            System.out.println("Once");
	            //find Once
	            while (ret.next()) {  
	            	
	            	String startStation = ret.getString(2);
	            	String startLine = ret.getString(3);
	            	String I1Station = ret.getString(4);
	                String I1Line = ret.getString(5);  
	                String stopStation = ret.getString(6);  
	                String stopLine = ret.getString(7);  
	                String totalDis = ret.getString(8);  
	                String totalStop = ret.getString(9);  
	                System.out.println(startStation+ "\t"+startLine+ "\t"+I1Station+ "\t"+I1Line + "\t" + stopStation + "\t"+ stopLine + "\t" +totalDis+ "\t"+ totalStop + "\t");  
	            }
	            ret = db3.pst.executeQuery();
	            System.out.println("Twice");
	            //find Twice
	            while (ret.next()) {  
	            	
	            	String startStation = ret.getString(2);
	            	String startLine = ret.getString(3);
	            	String I1Station = ret.getString(4);
	                String I1Line = ret.getString(5);  
	                String I2Station = ret.getString(6);
	                String I2Line = ret.getString(7);  
	                String stopStation = ret.getString(8);  
	                String stopLine = ret.getString(9);  
	                String totalDis = ret.getString(10);  
	                String totalStop = ret.getString(11);  
	                System.out.println(startStation+ "\t"+startLine+ "\t"+I1Station+ "\t"+I1Line + "\t"+I2Station+ "\t"+I2Line + "\t" + stopStation + "\t"+ stopLine + "\t" +totalDis+ "\t"+ totalStop + "\t");  
	            }  
	            ret = db4.pst.executeQuery();
	            System.out.println("Triple");
	            //find Triple
	            while (ret.next()) {  
	            	
	            	String startStation = ret.getString(2);
	            	String startLine = ret.getString(3);
	            	String I1Station = ret.getString(4);
	                String I1Line = ret.getString(5);  
	                String I2Station = ret.getString(6);
	                String I2Line = ret.getString(7);  
	                String I3Station = ret.getString(8);
	                String I3Line = ret.getString(9);  
	                String stopStation = ret.getString(10);  
	                String stopLine = ret.getString(11);  
	                String totalDis = ret.getString(12);  
	                String totalStop = ret.getString(13);  
	                System.out.println(startStation+ "\t"+startLine+ "\t"+I1Station+ "\t"+I1Line + "\t"+I2Station+ "\t"+I2Line + "\t"+I3Station+ "\t"+I3Line + "\t" + stopStation + "\t"+ stopLine + "\t" +totalDis+ "\t"+ totalStop + "\t");  
	            } 
	            System.out.println("Min_distance: (each interchange will lead the distance add 1, so the  total number of stops can caculate by distance.)");
	            
	            ret = db5.pst.executeQuery();
	            while (ret.next()) {  
	                dis1 = ret.getString(1);  
	                System.out.println("Change Once needs "+dis1 + ".\t so the total stops is "+dis1+"-1 .");  
	                if(dis1==null)
	                	dis1 = "1000";
	            }  
	            ret = db6.pst.executeQuery();
	            while (ret.next()) {  
	                dis2 = ret.getString(1); 
	                System.out.println("Change Twice needs "+dis2 + ".\t so the total stops is "+dis2+"-2 ." );  
	                if(dis2==null)
	                	dis2 = "1000";
	            }  
	            ret = db7.pst.executeQuery();
	            while (ret.next()) {  
	                dis3 = ret.getString(1); 
	                System.out.println("Change Triple needs "+dis3 + ".\t so the total stops is "+dis3+"-3 ." );  
	                if(dis3==null)
	                	dis3 = "1000";
	            }  
	            if(lineId == null){
		           
		            if(Integer.parseInt(dis1)<=Integer.parseInt(dis2)&&Integer.parseInt(dis1)<=Integer.parseInt(dis3)){
		            	sql8 = "Select * from Once where totalDis = "+Integer.parseInt(dis1)+";";
		            	db8 = new DBHelper(sql8);
		            	ret = db8.pst.executeQuery();
		 	            while (ret.next()) {  
		 	            	
		 	            	String startStation = ret.getString(2);
		 	            	String startLine = ret.getString(3);
		 	            	String I1Station = ret.getString(4);
		 	                String I1Line = ret.getString(5);  
		 	                String stopStation = ret.getString(6);  
		 	                String stopLine = ret.getString(7);  
		 	                String totalDis = ret.getString(8);  
		 	                String totalStop = ret.getString(9);  
		 	                startLine = changeName(startLine);
			                I1Line = changeName(I1Line);
			                stopLine = changeName(stopLine); 
		 	                ans = "<html>Start station is "+ startStation+" and start line "+startLine+"<br><br>"+"then you transfer at "+I1Station+" go into line"+ stopLine + "<br><br>finally to arrive at the destination "+stopStation+ "<br><br>Total Station:"+totalStop+ "       Total Distance:"+totalDis+"<br><br>You need to interchange 1 time.</html>";
		 	                System.out.println(startStation+ "\t"+startLine+ "\t"+I1Station+ "\t"+I1Line + "\t" + stopStation + "\t"+ stopLine + "\t" +totalDis+ "\t"+ totalStop + "\t");  
		 	                System.out.println("Start station is "+ startStation+" and start line "+startLine+""+"\nthen you transfer at "+I1Station+" go into line"+ stopLine + "\nfinally to arrive at the destination "+stopStation+ "\nTotal Station:"+totalStop+ "       Total Distance:"+totalDis+"\nYou need to interchange 1 time.");
		 	            }
		            	
		            }
		            else if(Integer.parseInt(dis2)<Integer.parseInt(dis1)&&Integer.parseInt(dis2)<=Integer.parseInt(dis3)){
		            	sql8 = "Select * from Twice where totalDis = "+Integer.parseInt(dis2)+";";
		            	db8 = new DBHelper(sql8);
		            	ret = db8.pst.executeQuery();
			            while (ret.next()) {  
			            	
			            	String startStation = ret.getString(2);
			            	String startLine = ret.getString(3);
			            	String I1Station = ret.getString(4);
			                String I1Line = ret.getString(5);  
			                String I2Station = ret.getString(6);
			                String I2Line = ret.getString(7);  
			                String stopStation = ret.getString(8);  
			                String stopLine = ret.getString(9);  
			                String totalDis = ret.getString(10);  
			                String totalStop = ret.getString(11); 
			                startLine = changeName(startLine);
			                I1Line = changeName(I1Line);
			                I2Line = changeName(I2Line);
			                stopLine = changeName(stopLine); 
			                ans = "<html>Start station is "+ startStation+" and start line "+startLine+"<br><br>"+"then you transfer at "+I1Station+" go into line"+ I2Line +"<br><br>then you transfer at "+I2Station+" go into line"+ stopLine+ "<br><br>finally to arrive at the destination "+stopStation+ "<br><br>Total Station:"+totalStop+ "       Total Distance:"+totalDis+"<br><br>You need to interchange 2 times.</html>";
			                System.out.println(startStation+ "\t"+startLine+ "\t"+I1Station+ "\t"+I1Line + "\t"+I2Station+ "\t"+I2Line + "\t" + stopStation + "\t"+ stopLine + "\t" +totalDis+ "\t"+ totalStop + "\t");
			                System.out.println("Start station is "+ startStation+" and start line "+startLine+"\n"+"then you transfer at "+I1Station+" go into line"+ I2Line +"\nthen you transfer at "+I2Station+" go into line"+ stopLine+ "\nfinally to arrive at the destination "+stopStation+ "\nTotal Station:"+totalStop+ "       Total Distance:"+totalDis+"\nYou need to interchange 2 times.");  
			            }  
		            }
		            else {
			            sql8 = "Select * from Triple where totalDis = "+Integer.parseInt(dis3)+";";
			            db8 = new DBHelper(sql8);
			            ret = db8.pst.executeQuery();
			            System.out.println("Min_Route");
			            while (ret.next()) {  
			            	
			            	String startStation = ret.getString(2);
			            	String startLine = ret.getString(3);
			            	String I1Station = ret.getString(4);
			                String I1Line = ret.getString(5);  
			                String I2Station = ret.getString(6);
			                String I2Line = ret.getString(7);  
			                String I3Station = ret.getString(8);
			                String I3Line = ret.getString(9);  
			                String stopStation = ret.getString(10);  
			                String stopLine = ret.getString(11);  
			                String totalDis = ret.getString(12);  
			                String totalStop = ret.getString(13);  
			                startLine = changeName(startLine);
			                I1Line = changeName(I1Line);
			                I2Line = changeName(I2Line);
			                I3Line = changeName(I3Line);
			                stopLine = changeName(stopLine);
			                ans = "<html>Start station is "+ startStation+" and start line "+startLine+"<br><br>"+"then you transfer at "+I1Station+" go into line"+ I2Line +"<br><br>then you transfer at "+I2Station+" go into line"+ I3Line + "<br><br>then you transfer at "+I3Station+" go into line"+stopLine+"<br><br>finally to arrive at the destination "+stopStation+ "<br><br>Total Station:"+totalStop+ "       Total Distance:"+totalDis+"<br><br>You need to interchange 3 times.</html>";
			                System.out.println(startStation+ "\t"+startLine+ "\t"+I1Station+ "\t"+I1Line + "\t"+I2Station+ "\t"+I2Line + "\t"+I3Station+ "\t"+I3Line + "\t" + stopStation + "\t"+ stopLine + "\t" +totalDis+ "\t"+ totalStop + "\t");  
			                System.out.println("Start station is "+ startStation+" and start line "+startLine+"\n"+"then you transfer at "+I1Station+" go into line"+ I2Line +"\nthen you transfer at "+I2Station+" go into line"+ I3Line + "\nthen you transfer at "+I3Station+" go into line"+stopLine+"\nfinally to arrive at the destination "+stopStation+ "\nTotal Station:"+totalStop+ "       Total Distance:"+totalDis+"\nYou need to interchange 3 times.");
			            }  
		            }
	            }
	            else{
	            	lineId = changeName(lineId);
	            	ans = "Straight to destination from line:" + lineId;
	            	System.out.println("Straight to destination from lineId: "+lineId);
	            }
	            ret.close();//Close the connection
	            db1.close();  
	            db2.close();  
	            db3.close();  
	            db4.close();  
	            db5.close();  
	            db6.close();  
	            db7.close();  
	            db8.close();
	            db.close();
	        } catch (SQLException e) {  
	            e.printStackTrace();  
	        }  
	    }  
	  
	}  

