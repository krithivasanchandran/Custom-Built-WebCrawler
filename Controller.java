

import edu.uci.ics.crawler4j.crawler.CrawlConfig;
import edu.uci.ics.crawler4j.crawler.CrawlController;
import edu.uci.ics.crawler4j.fetcher.PageFetcher;
import edu.uci.ics.crawler4j.robotstxt.RobotstxtConfig;
import edu.uci.ics.crawler4j.robotstxt.RobotstxtServer;


public class Controller {
        public static void main(String[] args) throws Exception {
        	int i;
        	CrawlConfig config1=null,config2=null,config3=null,config4=null,config5=null,config6=null,config7=null,config8=null,config9=null,config10=null;
        	CrawlConfig config11=null,config12=null,config13=null,config14=null,config15=null,config16=null,config17=null,config18=null,config19=null,config20=null;
        	CrawlConfig config21=null,config22=null,config23=null,config24=null,config25=null,config26=null,config27=null,config28=null,config29=null,config30=null;
        	PageFetcher pageFetcher1=null,pageFetcher2=null,pageFetcher3=null,pageFetcher4=null,pageFetcher5=null,pageFetcher6=null,pageFetcher7=null,pageFetcher8=null,pageFetcher9=null,pageFetcher10=null;
        	PageFetcher pageFetcher11=null,pageFetcher12=null,pageFetcher13=null,pageFetcher14=null,pageFetcher15=null,pageFetcher16=null,pageFetcher17=null,pageFetcher18=null,pageFetcher19=null,pageFetcher20=null;
        	PageFetcher pageFetcher21=null,pageFetcher22=null,pageFetcher23=null,pageFetcher24=null,pageFetcher25=null,pageFetcher26=null,pageFetcher27=null,pageFetcher28=null,pageFetcher29=null,pageFetcher30=null;
        	  CrawlController controller1=null,controller2=null,controller3=null,controller4=null,controller5=null,controller6=null,controller7=null,controller8=null,controller9=null,controller10=null;
         	  CrawlController controller11=null,controller12=null,controller13=null,controller14=null,controller15=null,controller16=null,controller17=null,controller18=null,controller19=null,controller20=null;
         	  CrawlController controller21=null,controller22=null,controller23=null,controller24=null,controller25=null,controller26=null,controller27=null,controller28=null,controller29=null,controller30=null;
             
             String crawlStorageFolder[] ={"/data31/content","/data31/content2","/data31/content3","/data31/content4","/data31/content5","/data31/content6","/data31/content7","/data31/content8","/data31/content9","/data31/content10",
            		 "/data31/content","/data31/content2","/data31/content3","/data31/content4","/data31/content5","/data31/content6","/data31/content7","/data31/content8","/data31/content9","/data31/content10",
            		 "/data31/content","/data31/content2","/data31/content3","/data31/content4","/data31/content5","/data31/content6","/data31/content7","/data31/content8","/data31/content9","/data31/content10"};
             Object[] str = {config1,config2,config3,config4,config5,config6,config7,config8,config9,config10,config11,config12,config13,config14,config15,config16,config17,config18,config19,config20,config21,config22,config23,config24,config25,config26,config27,config28,config29,config30};
           	PageFetcher pager[] = {pageFetcher1,pageFetcher2,pageFetcher3,pageFetcher4,pageFetcher5,pageFetcher6,pageFetcher7,pageFetcher8,pageFetcher9,pageFetcher10,
           			pageFetcher11,pageFetcher12,pageFetcher13,pageFetcher14,pageFetcher15,pageFetcher16,pageFetcher17,pageFetcher18,pageFetcher19,pageFetcher20,pageFetcher21,pageFetcher22,pageFetcher23,pageFetcher24,pageFetcher25,pageFetcher26,pageFetcher27,pageFetcher28,pageFetcher29,pageFetcher30};
          	CrawlController crawl[]={controller1,controller2,controller3,controller4,controller5,controller6,controller7,controller8,controller9,controller10,controller11,controller12,controller13,controller14,controller15,controller16,controller17,controller18,controller19,controller20,
          			controller21,controller22,controller23,controller24,controller25,controller26,controller27,controller28,controller29,controller30};
          			
          	for(i=0;i<=29;i++){
            	

                str[i] = new CrawlConfig();
                
                
                ((CrawlConfig) str[i]).setCrawlStorageFolder(crawlStorageFolder[i]);
                
                if(i%2 == 0)  ((CrawlConfig) str[i]).setPolitenessDelay(300);
                else ((CrawlConfig) str[i]).setPolitenessDelay(400);
                
                ((CrawlConfig) str[i]).setMaxDepthOfCrawling(2);
                
                ((CrawlConfig) str[i]).setResumableCrawling(true);
                
                
                ((CrawlConfig) str[i]).setFollowRedirects(false);
                
                ((CrawlConfig) str[i]).setMaxPagesToFetch(-1);
                

                /*
                 * Instantiate the controller for this crawl.
                 */
                
                pager[i] = new PageFetcher(((CrawlConfig) str[i]));
              
                
                RobotstxtConfig robotstxtConfig = new RobotstxtConfig();
                RobotstxtServer robotstxtServer = new RobotstxtServer(robotstxtConfig,  pager[i]);
                
                crawl[i] =  new CrawlController( (CrawlConfig)str[i],  pager[i], robotstxtServer);
              
                /*
                 * For each crawl, you need to add some seed urls. These are the first
                 * URLs that are fetched and then the crawler starts following links
                 * which are found in these pages
                 */
                
                switch(i){
                
                case 0:
                	 for(int startid=165001;startid<=200000;startid++)  
                		 {
                		 crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	 }
                	 System.out.println(" Start of CRAWLER------->" +i);
                	 crawl[i].start(rmpCrawler.class, 20);
                	 break;
                	
                			
                case 1: 
                	 for(int startid=200000;startid<=250000;startid++) 
                		 {
                		 crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                		 }
                	  System.out.println(" Start of CRAWLER------->" +i);
             	     crawl[i].startNonBlocking(rmpCrawler.class, 20);  
                	 break;
                case 2: 
                	for(int startid=250001;startid<=300000;startid++){
                		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	}
               	 System.out.println(" Start of CRAWLER------->" +i);
            	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                	 break;
                case 3: 
                	for(int startid=300001;startid<=350000;startid++){
                		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	}
                	 System.out.println(" Start of CRAWLER------->" +i);
                	 crawl[i].start(rmpCrawler.class, 20);
                	 break;
                case 4: 
                	for(int startid=350001;startid<=400000;startid++){
                		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	}
                	 System.out.println(" Start of CRAWLER------->" +i);
                	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                	 break;
               case 5: 
            	   for(int startid=400001;startid<=450000;startid++){
               		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
               	}
            	   System.out.println(" Start of CRAWLER------->" +i);
                 	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
               	 break;
               case 6: 
            	   for(int startid=450001;startid<=500000;startid++){
                  		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                  	}
            	   System.out.println(" Start of CRAWLER------->" +i);
                	 crawl[i].start(rmpCrawler.class, 20);
                  	 break;
               case 7: 
            	   for(int startid=500001;startid<=550000;startid++){
                 		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                 	}
            	   System.out.println(" Start of CRAWLER------->" +i);
               	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                 	 break;
                 case 8: 
                	 for(int startid=550001;startid<=600000;startid++){
                  		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                  	}
                	 System.out.println(" Start of CRAWLER------->" +i);
                  	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                  	 break;
                 case 9: 
                	 for(int startid=600001;startid<=650000;startid++){
                   		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                   	}
                  	 System.out.println(" Start of CRAWLER------->" +i);
                   	 crawl[i].start(rmpCrawler.class, 20);
                   	 break;
                 case 10:
                	 for(int startid=650001;startid<=700000;startid++){
                    		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                    	}
                	 System.out.println(" Start of CRAWLER------->" +i);
                	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                    	 break;
                case 11: 
                	for(int startid=700001;startid<=750000;startid++){
                		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	}
                	System.out.println(" Start of CRAWLER------->" +i);
               	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                	 break;
                case 12: 
                	for(int startid=750001;startid<=800000;startid++){
                		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	}
                	System.out.println(" Start of CRAWLER------->" +i);
               	 crawl[i].start(rmpCrawler.class, 20);
                	 break;
                case 13: 
                	for(int startid=800001;startid<=850000;startid++){
                		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	}
                	System.out.println(" Start of CRAWLER------->" +i);
               	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                	 break;
                case 14: 
                	for(int startid=850001;startid<=900000;startid++){
                		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	}
                	 System.out.println(" Start of CRAWLER------->" +i);
                	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                	 break;
               case 15: 
            	   for(int startid=900001;startid<=950000;startid++){
               		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
               	}
            		 System.out.println(" Start of CRAWLER------->" +i);
                   	 crawl[i].start(rmpCrawler.class, 20);
               	 break;
               case 16: 
            	   for(int startid=950001;startid<=1000000;startid++){
                  		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                  	}
            	   System.out.println(" Start of CRAWLER------->" +i);
                	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                  	 break;
               case 17: 
            	   for(int startid=1000001;startid<=1050000;startid++){
                 		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                 	}
            	   System.out.println(" Start of CRAWLER------->" +i);
               	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                 	 break;
                 case 18: 
                	 for(int startid=1050001;startid<=1100000;startid++){
                  		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                  	}
                	 System.out.println(" Start of CRAWLER------->" +i);
                  	 crawl[i].start(rmpCrawler.class, 20);
                  	 break;
                 case 19: 
                	 for(int startid=1100001;startid<=1150000;startid++){
                   		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                   	}
                	 System.out.println(" Start of CRAWLER------->" +i);
                   	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                   	 break;
                 case 20:
                	 for(int startid=1150001;startid<=1200000;startid++){
                    		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                    	}
                	 System.out.println(" Start of CRAWLER------->" +i);
                	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                    	 break;
                case 21: 
                	for(int startid=1200001;startid<=1250000;startid++){
                		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	}
                	System.out.println(" Start of CRAWLER------->" +i);
               	    crawl[i].start(rmpCrawler.class, 20);
                	 break;
                case 22: 
                	for(int startid=1250001;startid<=1300000;startid++){
                		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	}
                	 System.out.println(" Start of CRAWLER------->" +i);
                	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                	 break;
                case 23: 
                	for(int startid=1300001;startid<=1350000;startid++){
                		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	}
                	System.out.println(" Start of CRAWLER------->" +i);
               	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                	 break;
                case 24: 
                	for(int startid=1350001;startid<=1400000;startid++){
                		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                	}
                	System.out.println(" Start of CRAWLER------->" +i);
               	 crawl[i].start(rmpCrawler.class, 20);
                	 break;
               case 25: 
            	   for(int startid=1400001;startid<=1450000;startid++){
               		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
               	}
            	 	 System.out.println(" Start of CRAWLER------->" +i);
                   	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
               	 break;
               case 26: 
            	   for(int startid=1450001;startid<=1500000;startid++){
               		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
               	}
            	   System.out.println(" Start of CRAWLER------->" +i);
                 	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
               	 break;
               case 27: 
            	   for(int startid=1500001;startid<=1550000;startid++){
               		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
               	}
            	   System.out.println(" Start of CRAWLER------->" +i);
                 	 crawl[i].start(rmpCrawler.class, 20);
               	 break;
                 case 28: 
                	 for(int startid=1550001;startid<=1600000;startid++){
                 		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                 	}
                	 System.out.println(" Start of CRAWLER------->" +i);
                 	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                 	 break;
                 case 29: 
                	 for(int startid=1600001;startid<=1650000;startid++){
                 		crawl[i].addSeed("http://www.ratemyprofessors.com/ShowRatings.jsp?tid="+startid);
                 	}
                	 System.out.println(" Start of CRAWLER------->" +i);
                 	 crawl[i].startNonBlocking(rmpCrawler.class, 20);
                 	 break;
                
                }
                
          	}
                         
        }
}