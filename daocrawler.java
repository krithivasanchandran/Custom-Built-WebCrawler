import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;



public class daocrawler {
	private Connection establishConnection;
	private PreparedStatement executestatement;
	private ResultSet rset = null;
	public int i=0;

	daocrawler(){
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		establishConnection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	}
	
	public void insertProfessorDetails(String Country,String State,String SchoolName,String cityLocatedIn,String OriginatedProfessorName,String departmentName)
	{
	    StringBuffer bufferString = new StringBuffer();
		try {
			bufferString.append("INSERT INTO professor(PROF_ID,professorname,department,universityname,citylocation,state,country) VALUES (seq_person.nextval,?,?,?,?,?,?)");
			executestatement = establishConnection.prepareStatement(bufferString.toString());
			executestatement.setString(1,OriginatedProfessorName);
			executestatement.setString(2,departmentName);
			executestatement.setString(3,SchoolName);
			executestatement.setString(4,cityLocatedIn);
			executestatement.setString(5,State);
			executestatement.setString(6,Country);
			establishConnection.setAutoCommit(false); 
			rset = executestatement.executeQuery();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				establishConnection.commit();
			} catch (SQLException e) {
				System.out.println(" CRITICAL EXCEPTION THROWED AT COMMITING THE STUFF");
				e.printStackTrace();
			}
		}
	}
	
	public void insertProfessorComments(String commentslist, Professor profdetails)
	{
	    StringBuffer bufferString = new StringBuffer();
		try {
			bufferString.append("INSERT INTO PROFESSOR_COMMENTS(professorname,department,universityname,COMMENTS) VALUES (?,?,?,?)");
			executestatement = establishConnection.prepareStatement(bufferString.toString());
			executestatement.setString(1,profdetails.getOriginatedProfessorName());
			executestatement.setString(2,profdetails.getDepartmentName());
			executestatement.setString(3,profdetails.getSchoolName());
			executestatement.setString(4,commentslist);
			establishConnection.setAutoCommit(false); 
			rset = executestatement.executeQuery();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				establishConnection.commit();
			} catch (SQLException e) {
				System.out.println(" CRITICAL EXCEPTION THROWED AT COMMITING THE STUFF");
				e.printStackTrace();
			}
		}
	}
	
}
