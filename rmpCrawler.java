import java.util.List;
import java.util.regex.Pattern;

import edu.uci.ics.crawler4j.crawler.Page;
import edu.uci.ics.crawler4j.crawler.WebCrawler;
import edu.uci.ics.crawler4j.parser.HtmlParseData;
import edu.uci.ics.crawler4j.url.WebURL;


public class rmpCrawler extends WebCrawler{
	 StringBuffer builder = new StringBuffer();
	 daocrawler dao = new daocrawler();
     Professor prof = new Professor();
	private static final Pattern FILTERS = Pattern.compile(".*(\\.(css|js|bmp|gif|jpe?g" 
            + "|png|tiff?|mid|mp2|mp3|mp4"
            + "|wav|avi|mov|mpeg|ram|m4v|pdf" 
            + "|rm|smil|wmv|swf|wma|zip|rar|gz))$");

	@Override
    public boolean shouldVisit(WebURL url) {
            String href = url.getURL().toLowerCase();
            return !FILTERS.matcher(href).matches() && href.startsWith("http://www.ratemyprofessors.com/ShowRatings.jsp?tid=~");
    }

	
public void visit(Page page){
		
	
	
		String urlcrawler = page.getWebURL().getURL();
		System.out.println(" URL to be crawled " + urlcrawler);
		
		if(page.getParseData() instanceof HtmlParseData){
			HtmlParseData htmlParseData = (HtmlParseData)page.getParseData();
			String text = htmlParseData.getText();
			String html = htmlParseData.getHtml();
			String classname = htmlParseData.getTitle();
			 List<WebURL> links = htmlParseData.getOutgoingUrls();
			 
			 //Removing white spaces 
			// text = text.replaceAll("\\s+"," ");
			 //Each and every Rating seperated by ~
			 text= text.replaceAll("Report this rating","~~~");
			 
			 //Removing Headers
			 //int startpoint = text.indexOf();
			 //Removing Footers
			 int startpoint = text.indexOf("HomeAboutTop ListsProfessors Strike Back",0);
			 System.out.println(" index of :" + text.indexOf("HomeAboutTop ListsProfessors Strike Back",0));
			 //String contains the body of the ratings
			 String mainbody = text.substring(startpoint+"HomeAboutTop ListsProfessors Strike Back".length(), text.length());
			 
			/*  builder.append(mainbody.trim());
			 try {
					BufferedWriter out = new BufferedWriter(new FileWriter("C:/data/content.txt"));
					out.write(builder.toString());
					out.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}*/
			
			  Professor detailsprof = parseProfessorHeaderDetails(mainbody);
			  parseProfessorComments(mainbody,detailsprof);
			 // This is code is for comments and date extraction.
		
			
		/*	 
			 
			 /* System.out.println("Text contents: " + text + "\n");
	          System.out.println("Html length: " + html.length());
	          System.out.println("Html length: " + classname.length());
	          System.out.println("Number of outgoing links: " + links.size());
			 */
			 
			
				
		
	}	
	}
	
	
	


//Parsing main text body and taking only the header content
private Professor parseProfessorHeaderDetails(String headerDetails){
	
	
	
	
		
		int countryDelimiterStartIndex = headerDetails.indexOf("»", 0);
		  
		if(headerDetails.indexOf("»", countryDelimiterStartIndex+1)!=-1){
			int stateDelimiterStartIndex = headerDetails.indexOf("»", countryDelimiterStartIndex+1);	
		   if( headerDetails.indexOf("»", stateDelimiterStartIndex+1)!=-1){
			   	int schoolDelimiterStartIndex = headerDetails.indexOf("»", stateDelimiterStartIndex+1);
			   	if(headerDetails.indexOf("»", schoolDelimiterStartIndex+1)!=-1){
			   		int professorDelimiterStartIndex = headerDetails.indexOf("»", schoolDelimiterStartIndex+1);
			   		int cityLocationDetails = headerDetails.indexOf(":", professorDelimiterStartIndex+1);
			   		
			   	String Country = headerDetails.substring(countryDelimiterStartIndex+1 ,headerDetails.indexOf("»", countryDelimiterStartIndex+1)).trim();
			   	String State = headerDetails.substring(stateDelimiterStartIndex+1, headerDetails.indexOf("»", stateDelimiterStartIndex+1)).trim();
			   	String SchoolName = headerDetails.substring(schoolDelimiterStartIndex+1, headerDetails.indexOf("»", schoolDelimiterStartIndex+1)).trim();
			   	String ProfessorNameUnTrimmed = headerDetails.substring(professorDelimiterStartIndex+1, headerDetails.indexOf(":", professorDelimiterStartIndex+1));
			    int citydemiliter = headerDetails.indexOf("Location:",0);
			    int departmentdemiliter = headerDetails.indexOf("Department:",citydemiliter);
			    
			   // if(":".equals(headerDetails.charAt(citydemiliter+"Locatio".length()))){
			 	String cityLocatedIn = headerDetails.substring(citydemiliter+"Location:".length(), headerDetails.indexOf(",", citydemiliter+"Location:".length())).trim();
			  	int SchoolDelimiter = ProfessorNameUnTrimmed.indexOf("School");
			  	String ProfessorUnEditedNameDetails = ProfessorNameUnTrimmed.substring(0, SchoolDelimiter-1);
			   	
			   	String OriginatedProfessorName =  ProfessorUnEditedNameDetails.substring(0, Math.round(ProfessorUnEditedNameDetails.length()/2)-1).trim();
			   	
			   String departmentName =  headerDetails.substring(departmentdemiliter+"Department:".length(), headerDetails.indexOf(".",departmentdemiliter+"Department:".length())-1).trim();
			   
			  //	System.out.println("Country is =-----------------> " + Country + State + SchoolName + "OriginatedProfessorName--------->" +OriginatedProfessorName + "City Located In ---------> " +cityLocatedIn + " DEPARTMENT NAME ---------------> " + departmentName);
			   
			  	dao.insertProfessorDetails(Country,State,SchoolName,cityLocatedIn,OriginatedProfessorName,departmentName);
			   
				   prof.setOriginatedProfessorName(OriginatedProfessorName);
				   prof.setDepartmentName(departmentName);
				   prof.setSchoolName(SchoolName);
			   	
		
			   	
	}}}
	
		
		return prof;
}

private void parseProfessorComments(String mainbody, Professor profdetails){
	
	 int insertloopexit=0;
	int mainBodyLength =  mainbody.length();
	 
	 String comments = mainbody.substring(mainbody.indexOf("UserCommentsandRatings",0)+"UserCommentsandRatings".length()+"ProfessorFeedbackDateClassRatingComment".length(), mainbody.indexOf("~~~",mainbody.indexOf("UserCommentsandRatings",0)+"ProfessorFeedbackDateClassRatingComment".length()));
	
	 if(mainbody.indexOf("~~~",0)!=-1){
		 
   String bcd = mainbody.substring(mainbody.indexOf(comments) + comments.length(), mainbody.indexOf("~~~",mainbody.indexOf(comments) + comments.length()+4));
  			 
   mainbody= mainbody.substring(mainbody.indexOf(bcd) + bcd.length(), mainBodyLength);
  
  while(mainbody.indexOf("~~~",0)!=-1){
   
  	String second = mainbody.substring(3,mainbody.indexOf("~~~", 4));
  	
   	
  	String trimmedsecond = second.indexOf("Rater Interest",0)!= -1 ? second.substring(second.indexOf("Rater Interest",0)+"Rater Interest".length()+3,second.length()): second.substring(second.indexOf("Clarity",0)+"Clarity".length()+3,second.length()) ;
  	
  	if(trimmedsecond != null && !(trimmedsecond.indexOf("No comments")!=-1)  && !(trimmedsecond.indexOf("Easiness")!=-1) && !(trimmedsecond.indexOf("Clarity")!=-1) && !(trimmedsecond.indexOf("Rater Interest")!=-1) &&  !(trimmedsecond.indexOf("Helpfulness")!=-1)){
  	dao.insertProfessorComments(trimmedsecond,profdetails);
  	}
  	  mainbody =  mainbody.substring(mainbody.indexOf(second)+ second.length(),mainbody.length());
  	  
  	insertloopexit++;
  	
  	if(insertloopexit == 6) break;
  	 
  }

	}
	
}


}
