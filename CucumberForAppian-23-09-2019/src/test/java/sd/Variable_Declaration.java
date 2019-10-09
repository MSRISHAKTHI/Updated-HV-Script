package sd;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


public class Variable_Declaration {
    
	public static String  replaceVaribaleFromFile(String file_name, String everything) throws Exception
	{
		DateFormat dateformat= new SimpleDateFormat("MM/dd/yyyy");
		Date date= new Date();
		
		DateFormat datetimeformat= new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		Date datetime= new Date();
		
		//New
				Calendar calendar = Calendar.getInstance();
				calendar.add(Calendar.DAY_OF_YEAR, 1);
				Date tomorrow = calendar.getTime();
				
				Calendar cal = Calendar.getInstance();
				cal.add(Calendar.DATE, -1); // -days
				Date previousDate = cal.getTime();
				
		//Old
	    BufferedReader bufReader = new BufferedReader(new FileReader(file_name));
	    String line1 = bufReader.readLine();
	    while (line1 != null) {
		      if(line1!=null)
		      {
		    	 
		    	  String[] arrOfStr= line1.split("=");
		    	  
				if(arrOfStr.length>=2)
				{
		    	  everything=everything.replace(arrOfStr[0],arrOfStr[1]);
				if(arrOfStr[1].equals("today")) {
				  everything=everything.replace(arrOfStr[1],dateformat.format(date));
				}
				else
				if(arrOfStr[1].equals("todaydatetime")) {
					  everything=everything.replace(arrOfStr[1],datetimeformat.format(datetime));
					}
				else
				if(arrOfStr[1].equals("pastdate")) {
					  everything=everything.replace(arrOfStr[1],dateformat.format(previousDate));
					}
				else
				if(arrOfStr[1].equals("futuredate")) {
					  everything=everything.replace(arrOfStr[1],dateformat.format(tomorrow));
					}
		      }
		      }
	      line1 = bufReader.readLine();
	    }
	    bufReader.close();
		return everything;		    

	}
	  public static void main(String[] args) throws Exception 
	  {
		String filePath="C:\\Users\\srishakthim\\eclipse-workspace\\Updated GCS Scripts\\CucumberForAppian-23-09-2019\\src\\test\\";
		
		//String file_name="resources\\ARWMAutomationRequesterforRPAProcess.feature";
        File folder = new File(filePath+"resources");
		String[] files = folder.list();

		for (String file : files)
		{
			String new_name="temp_"+file;
			generateUpdateFeatureFile("resources\\"+file,new_name);
		}
	  }	
	  
	  public static void generateUpdateFeatureFile(String file_name,String new_name) throws Exception
	  {
			String filePath="C:\\Users\\srishakthim\\eclipse-workspace\\Updated GCS Scripts\\CucumberForAppian-23-09-2019\\src\\test\\";
			String VAR_FILE="C:\\Users\\srishakthim\\eclipse-workspace\\Updated GCS Scripts\\CucumberForAppian-23-09-2019\\src\\main\\resources\\configs\\Variables.properties\\";
			String VAR1_FILE="C:\\Users\\srishakthim\\eclipse-workspace\\Updated GCS Scripts\\CucumberForAppian-23-09-2019\\src\\main\\resources\\configs\\FieldVariables.properties\\";
			BufferedReader br = new BufferedReader(new FileReader(filePath+file_name));
			try {
			    StringBuilder sb = new StringBuilder();
			    String line = br.readLine();

			    while (line != null) {
			        sb.append(line);
			        sb.append(System.lineSeparator());
			        line = br.readLine();
			    }
			    String feature_file_data= sb.toString();
			    
			    feature_file_data= Variable_Declaration.replaceVaribaleFromFile(VAR_FILE, feature_file_data);		    
			    feature_file_data= Variable_Declaration.replaceVaribaleFromFile(VAR1_FILE, feature_file_data);		   
			    String DIR_PATH="C:\\Users\\srishakthim\\eclipse-workspace\\Updated GCS Scripts\\CucumberForAppian-23-09-2019\\src\\test\\java\\Test_Cases\\";
				File yourFile = new File(DIR_PATH+new_name);
				yourFile.createNewFile();
				PrintWriter writer = new PrintWriter(DIR_PATH+new_name, "UTF-8");
				writer.println(feature_file_data);
				writer.close();
				
			} finally {
//			    br.close();
			}
	  }
}