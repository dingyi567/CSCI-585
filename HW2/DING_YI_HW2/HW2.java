
import java.sql.*;


public class HW2 {
	
	private static PreparedStatement preparedStatement;
	private static Statement statement;
	private static Connection connection;
	
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		initializeDB();
		
		HW2 hw2= new HW2();
		
     	if(args[0].equals("window")){
     		hw2.window(args[1], args[2], args[3], args[4], args[5]);
     	}
     	else if(args[0].equals("within")){
     		hw2.within(args[1], args[2]);
     	}
     	else if(args[0].equals("nearest_neighbor")){
     		hw2.nearest_neighbor(args[1], args[2], args[3]);
     	}
     	else if(args[0].equals("fixed")){
     		hw2.fixed(args[1]);
     	}
		//window("student",100,100,300,300);
		//window("student",0,0,1000,1000);

		//window("building",100,100,300,300);
		//window("tramstops",100,100,300,300);

		//within("p1",300); 
		
		//nearest_neighbor("student","b3",5);
		//nearest_neighbor("student","p3",5);
		//nearest_neighbor("student","t3sgm",5);
		
		//nearest_neighbor("building","b3",5);
		//nearest_neighbor("building","p3",5);
		//nearest_neighbor("building","t3sgm",5);
		
		//nearest_neighbor("tramstops","b3",5);
		//nearest_neighbor("tramstops","p3",5);
		//nearest_neighbor("tramstops","t3sgm",5);

	    //fixed(5);		
	}
	private static void initializeDB() throws ClassNotFoundException, SQLException
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Driver loaded");
		
		connection=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:orcl", "system", "DingYi123");	
        System.out.println("Database connected");
		
		//connection.close();
	}
	public void window(String ObjectType, String LowerLeftX, String LowerLeftY, String UpperRightX, String UpperRightY) throws ClassNotFoundException, SQLException
	{
		String queryString=null;
	    ResultSet resultSet = null;
	 
	     if(ObjectType.equals("student")){
	    	 
	    	 queryString="SELECT S.STUDENT_ID FROM STUDENT S WHERE sdo_relate(S.GEOM, SDO_geometry(2003,NULL,NULL, SDO_elem_info_array(1,1003,3),SDO_ordinate_array(?, ?, ?, ?)),'mask=INSIDE+COVEREDBY') = 'TRUE' ";
	    	 //queryString="SELECT S.STUDENT_ID FROM STUDENT S WHERE sdo_filter(S.GEOM, SDO_geometry(2003,NULL,NULL, SDO_elem_info_array(1,1003,3),SDO_ordinate_array(?, ?, ?, ?))) = 'TRUE' ";
	    	 //queryString="SELECT S.STUDENT_ID FROM STUDENT S WHERE sdo_relate(S.GEOM, SDO_geometry(2003,NULL,NULL, SDO_elem_info_array(1,1003,3),SDO_ordinate_array(?, ?, ?, ?)),'mask=INSIDE') = 'TRUE' ";

	    	 
	   	     preparedStatement =connection.prepareStatement(queryString);
	   	    
	    	 preparedStatement.setInt(1, Integer.parseInt(LowerLeftX));
	  	     preparedStatement.setInt(2,Integer.parseInt(LowerLeftY));
	  	     preparedStatement.setInt(3,Integer.parseInt(UpperRightX));
	  	     preparedStatement.setInt(4,Integer.parseInt(UpperRightY));
	    	 	
	    	 resultSet= preparedStatement.executeQuery();
	     }
	     else if(ObjectType.equals("building")){
	    	 
                queryString="SELECT BUILDING.BUILDING_ID FROM BUILDING  WHERE sdo_relate(BUILDING.GEOM, SDO_geometry(2003,NULL,NULL, SDO_elem_info_array(1,1003,3),SDO_ordinate_array(?,?,?,?)),'mask=INSIDE+COVEREDBY') = 'TRUE'";

                
		   	    preparedStatement =connection.prepareStatement(queryString);
		   	    
		    	 preparedStatement.setInt(1, Integer.parseInt(LowerLeftX));
		  	     preparedStatement.setInt(2,Integer.parseInt(LowerLeftY));
		  	     preparedStatement.setInt(3,Integer.parseInt(UpperRightX));
		  	     preparedStatement.setInt(4,Integer.parseInt(UpperRightY));
	    	 	
	    	 resultSet= preparedStatement.executeQuery();
	     }
	     else if(ObjectType.equals("tramstops")){
	    	 
	    	queryString="SELECT TRAMSTOP.STATION_ID FROM TRAMSTOP WHERE sdo_relate(TRAMSTOP.GEOM, SDO_geometry(2003,NULL,NULL, SDO_elem_info_array(1,1003,3),SDO_ordinate_array(?,?,?,?)),'mask=INSIDE+COVEREDBY') = 'TRUE'";
	    	 
		   	    preparedStatement =connection.prepareStatement(queryString);
		   	    
		    	 preparedStatement.setInt(1, Integer.parseInt(LowerLeftX));
		  	     preparedStatement.setInt(2,Integer.parseInt(LowerLeftY));
		  	     preparedStatement.setInt(3,Integer.parseInt(UpperRightX));
		  	     preparedStatement.setInt(4,Integer.parseInt(UpperRightY));
	    	 	
	    	 resultSet= preparedStatement.executeQuery();
	     } 
	     
	 	while(resultSet.next())
		{
			System.out.println(resultSet.getString(1));
		}
		
	}
	
	public void within(String studentID, String distance) throws ClassNotFoundException, SQLException{
		
		String queryString=null;
	    ResultSet resultSet = null;

        // output building id
		queryString="SELECT B.BUILDING_ID FROM BUILDING B, STUDENT S  WHERE STUDENT_ID=? AND "
				+ "SDO_WITHIN_DISTANCE(B.GEOM, S.GEOM,'DISTANCE='||?)='TRUE'";
   	    preparedStatement =connection.prepareStatement(queryString);
	 
   	    preparedStatement.setString(1,studentID);
   	    preparedStatement.setInt(2,Integer.parseInt(distance));
   	    
   	    resultSet= preparedStatement.executeQuery();
   	       	    
 	    while(resultSet.next())
	   {
	 	 System.out.println(resultSet.getString(1));
	   }
 	    
 	   //output tramstop id 	 
		queryString="SELECT T.STATION_ID FROM TRAMSTOP T, STUDENT S WHERE STUDENT_ID=? AND "
				+ " SDO_WITHIN_DISTANCE(T.GEOM,S.GEOM,'DISTANCE='||?)='TRUE'";
   	    preparedStatement =connection.prepareStatement(queryString);
	 
   	    preparedStatement.setString(1,studentID);
  	    preparedStatement.setInt(2,Integer.parseInt(distance));
   	    
   	    resultSet= preparedStatement.executeQuery();
 	    while(resultSet.next())
	    {
	    	System.out.println(resultSet.getString(1));
	    } 	  	 
 	 
	}
	


	public  void nearest_neighbor(String ObjectType, String ID, String num1) throws SQLException{
		
		String queryString=null;
	    ResultSet resultSet = null;
  	    int num=Integer.parseInt(num1);
	     
	     if(ObjectType.equals("student")){
	    	 
	    	 if(ID.charAt(0)=='p'){
	    		 ++num;
	    	     queryString="SELECT S.STUDENT_ID FROM STUDENT S ,STUDENT S1 "
	    	     		+ "WHERE S1.STUDENT_ID=? AND S.STUDENT_ID<>? AND sdo_nn(S.GEOM,S1.GEOM ,'sdo_num_res=' || ?) = 'TRUE'";

	    	     preparedStatement =connection.prepareStatement(queryString);
	    	 
	    	     preparedStatement.setString(1,ID);
	    	     preparedStatement.setString(2,ID);
	    	     preparedStatement.setInt(3,num);
	    	 	
	    	     resultSet= preparedStatement.executeQuery();
	    	 }
	    	 else if(ID.charAt(0)=='b'){
		    	 queryString="SELECT S.STUDENT_ID FROM STUDENT S WHERE "
		    	 		+ "sdo_nn(S.GEOM, (SELECT BUILDING.GEOM FROM BUILDING WHERE BUILDING_ID=?),'sdo_num_res=' || ?) = 'TRUE'";

		    	 preparedStatement =connection.prepareStatement(queryString);
		    	 
		    	 preparedStatement.setString(1,ID);
		    	 preparedStatement.setInt(2,num);
		    	 	
		    	 resultSet= preparedStatement.executeQuery();
	    	 }
	    		 
	    	 else if(ID.charAt(0)=='t'){
		    	 queryString="SELECT S.STUDENT_ID FROM STUDENT S WHERE "
		    	 		+ "sdo_nn(S.GEOM, (SELECT TRAMSTOP.GEOM FROM TRAMSTOP WHERE STATION_ID=?),'sdo_num_res=' || ?) = 'TRUE'";

		    	 preparedStatement =connection.prepareStatement(queryString);
		    	 
		    	 preparedStatement.setString(1,ID);
		    	 preparedStatement.setInt(2,num);
		    	 	
		    	 resultSet= preparedStatement.executeQuery();
	    	 }
	     }
	     
	     else if(ObjectType.equals("building")){
	    	    	 
	    	 if(ID.charAt(0)=='p'){

	    	     queryString="SELECT B.BUILDING_ID FROM BUILDING B "
	    	     		+ "WHERE  sdo_nn(B.GEOM,(SELECT STUDENT.GEOM FROM STUDENT WHERE STUDENT_ID=?),'sdo_num_res=' || ?) = 'TRUE'";

	    	     preparedStatement =connection.prepareStatement(queryString);
	    	 
	    	     preparedStatement.setString(1,ID);
	    	     preparedStatement.setInt(2,num);
	    	 	
	    	     resultSet= preparedStatement.executeQuery();
	    	 }
	    	 else if(ID.charAt(0)=='b'){
	    		 ++num;          
	             queryString="SELECT B.BUILDING_ID FROM BUILDING B, BUILDING B1 WHERE "
	               		+ "sdo_nn(B.GEOM,B1.GEOM ,'sdo_num_res='||?) = 'TRUE' AND B1.BUILDING_ID=? AND B.BUILDING_ID<>?";  	 
	   
		    	 preparedStatement =connection.prepareStatement(queryString);
		    	 
		    	 preparedStatement.setInt(1,num);
		    	 preparedStatement.setString(2,ID);
		    	 preparedStatement.setString(3,ID);
		    	    	 	
		    	 resultSet= preparedStatement.executeQuery();
	    	 }
	    		 
	    	 else if(ID.charAt(0)=='t'){
		    	 queryString="SELECT B.BUILDING_ID FROM BUILDING B WHERE "
		    	 		+ "sdo_nn(B.GEOM, (SELECT TRAMSTOP.GEOM FROM TRAMSTOP WHERE STATION_ID=?),'sdo_num_res=' || ?) = 'TRUE'";

		    	 preparedStatement =connection.prepareStatement(queryString);
		    	 
		    	 preparedStatement.setString(1,ID);
		    	 preparedStatement.setInt(2,num);
		    	 	
		    	 resultSet= preparedStatement.executeQuery();
	    	 }
	    	 
	    	
	     }
	     else if(ObjectType.equals("tramstops")){
	    	 
	    	 if(ID.charAt(0)=='p'){

	    	     queryString="SELECT T.STATION_ID FROM TRAMSTOP T  "
	    	     		+ "WHERE  sdo_nn(T.GEOM,(SELECT STUDENT.GEOM FROM STUDENT WHERE STUDENT_ID=?),'sdo_num_res=' || ?) = 'TRUE'";

	    	     preparedStatement =connection.prepareStatement(queryString);
	    	 
	    	     preparedStatement.setString(1,ID);
	    	     preparedStatement.setInt(2,num);
	    	 	
	    	     resultSet= preparedStatement.executeQuery();
	    	 }
	    	 else if(ID.charAt(0)=='b'){
          
	             queryString="SELECT T.STATION_ID FROM TRAMSTOP T "
	             		+ "WHERE sdo_nn(T.GEOM, (SELECT BUILDING.GEOM FROM BUILDING WHERE BUILDING_ID=?),'sdo_num_res='||?) = 'TRUE'";  	 
	   
		    	 preparedStatement =connection.prepareStatement(queryString);
		    	 
		    	 preparedStatement.setString(1,ID);
		    	 preparedStatement.setInt(2,num);
		    	    	 	
		    	 resultSet= preparedStatement.executeQuery();
	    	 }
	    		 
	    	 else if(ID.charAt(0)=='t'){
	    		 
	    		 ++num;
		    	 queryString="SELECT T.STATION_ID FROM TRAMSTOP T, TRAMSTOP T1 WHERE "
		    	 		+ "sdo_nn(T.GEOM, T1.GEOM,'sdo_num_res=' || ?) = 'TRUE' AND T1.STATION_ID=? AND T.STATION_ID<>?";
		  	   
		    	 preparedStatement =connection.prepareStatement(queryString);
		    	 
		    	 preparedStatement.setInt(1,num);
		    	 preparedStatement.setString(2,ID);
		    	 preparedStatement.setString(3,ID);
		    	    	 	
		    	 resultSet= preparedStatement.executeQuery();
	    	 }
    	    
	     } 
	     
	     
	 	while(resultSet.next())
		{
			System.out.println(resultSet.getString(1));
		}
		
	}
	
	public void fixed(String num1) throws SQLException{
		
		
		String queryString=null;
	    ResultSet resultSet = null;
	    
	    int num= Integer.parseInt(num1);
		
		statement=connection.createStatement();
		
		if(num==1){//'DISTANCE=' || TO_CHAR(RADIUS))
			queryString="((SELECT S.STUDENT_ID FROM STUDENT S, TRAMSTOP T WHERE SDO_WITHIN_DISTANCE(S.GEOM,(SELECT TRAMSTOP.GEOM FROM TRAMSTOP WHERE STATION_ID='t6ssl'),'DISTANCE=' || TO_CHAR(RADIUS))='TRUE') "+
           "INTERSECT (SELECT S.STUDENT_ID FROM STUDENT S , TRAMSTOP T WHERE SDO_WITHIN_DISTANCE(S.GEOM,(SELECT TRAMSTOP.GEOM FROM TRAMSTOP WHERE STATION_ID='t2ohe'),'DISTANCE=' || TO_CHAR(RADIUS))='TRUE')) "+
           "UNION ((SELECT B.BUILDING_ID FROM BUILDING B , TRAMSTOP T WHERE SDO_WITHIN_DISTANCE(B.GEOM,(SELECT TRAMSTOP.GEOM FROM TRAMSTOP WHERE STATION_ID='t6ssl'),'DISTANCE=' || TO_CHAR(RADIUS))='TRUE') "+
           "INTERSECT (SELECT B.BUILDING_ID FROM BUILDING B , TRAMSTOP T WHERE SDO_WITHIN_DISTANCE(B.GEOM,(SELECT TRAMSTOP.GEOM FROM TRAMSTOP WHERE STATION_ID='t2ohe'),'DISTANCE=' || TO_CHAR(RADIUS))='TRUE')) ";
			
			resultSet=statement.executeQuery(queryString);
		 	while(resultSet.next())
			{
				System.out.println(resultSet.getString(1));
			}
			
		}
		else if(num==2){
			queryString="SELECT S.STUDENT_ID, T.STATION_ID FROM STUDENT S, TRAMSTOP T WHERE SDO_NN(T.GEOM,S.GEOM,'SDO_NUM_RES=2')='TRUE'";
			
			resultSet=statement.executeQuery(queryString);
			
		 	while(resultSet.next())
			{
				System.out.print(resultSet.getString(1)+"  ");
				System.out.println(resultSet.getString(2));
			}
		}
		else if(num==3){
			queryString="SELECT  A.X FROM (SELECT T.STATION_ID X,COUNT(*) FROM TRAMSTOP T, BUILDING B "+
                         "WHERE SDO_WITHIN_DISTANCE(B.GEOM,T.GEOM,'DISTANCE=250')='TRUE' GROUP BY T.STATION_ID ORDER BY COUNT(*) DESC) A WHERE ROWNUM=1";
			
			resultSet=statement.executeQuery(queryString);
			
			while(resultSet.next())
			{
				System.out.println(resultSet.getString(1));
			}
		}
		else if (num==4){
			queryString="SELECT * FROM (SELECT S.STUDENT_ID,COUNT(*) FROM STUDENT S, BUILDING B WHERE SDO_NN(S.GEOM,B.GEOM,'SDO_NUM_RES=1')='TRUE'"+
                        "GROUP BY S.STUDENT_ID ORDER BY COUNT(*) DESC) A WHERE ROWNUM<=5";
			resultSet=statement.executeQuery(queryString);
			
			
			while(resultSet.next())
			{
				System.out.print(resultSet.getString(1)+"  ");
				System.out.println(resultSet.getInt(2));

			}
		}
		else if(num==5){
			queryString="SELECT MIN(CASE WHEN ROWNUM=1 THEN column_value ELSE NULL END) as lowerLeftX,"
					+ "MAX(CASE WHEN ROWNUM=2 THEN column_value ELSE NULL END) as lowerLeftY,"
					+ "MIN(CASE WHEN ROWNUM=3 THEN column_value ELSE NULL END) as upperRightX,"
					+ "MAX(CASE WHEN ROWNUM=4 THEN column_value ELSE NULL END) as upperRightY "
					+ "FROM TABLE(SELECT SDO_AGGR_MBR(B.GEOM).SDO_ORDINATES FROM BUILDING B WHERE B.BUILDING_NAME LIKE 'SS%')";
			resultSet=statement.executeQuery(queryString);
			
			while(resultSet.next())
			{
				System.out.println("lowerLeftX   "+resultSet.getString(1));
				System.out.println("lowerLeftY   "+resultSet.getString(2));
				System.out.println("upperRightX  "+resultSet.getString(3));
				System.out.println("upperRightY  "+resultSet.getString(4));

			}
		}
	 

		
	}
	
	

}
