import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.opencsv.CSVReader;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/generateGraph")
public class GenerateGraph extends HttpServlet {

	private static final long serialVersionUID = 205242440643911308L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		
		try {
			String[] filterList = request.getParameterValues("category");
		    System.out.println("filterList" +Arrays.asList(filterList));
			Reader reader = Files.newBufferedReader(Paths.get(ApplicationConstatnts.UPLOAD_DIR + File.separator + request.getSession().getAttribute("fileName")));
		    CSVReader csvReader = new CSVReader(reader);
		    String[] line;
		    List<String> col1List = new ArrayList<>();
		    List<String> col2List = new ArrayList<>();
		    boolean skipHeader=true;
		    int col1Index= Integer.parseInt(filterList[0]);
		    int col2Index= Integer.parseInt(filterList[1]);
		    while ((line = csvReader.readNext()) != null) {
		    	if(skipHeader) {
		    		request.setAttribute("col1Name", line[col1Index]);
		  		    request.setAttribute("col2Name", line[col2Index]);
		    		skipHeader=false;
		    		continue;
		    	}
		    	col1List.add(line[col1Index]);
		    	col2List.add(line[col2Index]);
		    }
		    reader.close();
		    csvReader.close();
		    //System.out.println("col1List "+col1List);
		    //System.out.println("col2List "+col2List);
		    request.setAttribute("generateGrpah", "YES");
		    request.setAttribute("col1List", col1List);
		    request.setAttribute("col2List", col2List);
		} catch (Exception e) {
		}
		getServletContext().getRequestDispatcher("/HomePage.jsp").forward(request, response);
	}

}