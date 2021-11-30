import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
//import java.util.Arrays;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

/**
 * Servlet implementation class Accept
 */
@WebServlet("/FileAccept")
@MultipartConfig
public class FileAccept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileAccept() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getSession().removeAttribute("fileName");
		request.getSession().removeAttribute("headerList");
		request.getSession().setAttribute("fileUpload", "false");
		response.sendRedirect("HomePage.jsp");
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * 
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// creates the save directory if it does not exists
		File dirEx = new File(ApplicationConstatnts.UPLOAD_DIR);
		if (!dirEx.exists()) {
			dirEx.mkdirs();
		}
		String message="Only CSV file allowed";
		String fileName = null;
		// Get all the parts from request and write it to the file on server
		for (Part part : request.getParts()) {
			fileName = part.getSubmittedFileName();// getFileName(part);
			if(fileName.toUpperCase().endsWith(".CSV")) {
				part.write(ApplicationConstatnts.UPLOAD_DIR + File.separator + fileName);
				String headerLine=Files.lines(Paths.get(ApplicationConstatnts.UPLOAD_DIR + File.separator + fileName)).findFirst().get();
				//System.out.println(headerLine);
				request.getSession().setAttribute("headerList", headerLine);
				request.getSession().setAttribute("fileName", fileName);
				request.getSession().setAttribute("fileUpload", "true");
				message=fileName + " File uploaded successfully!";
				break;
			}
			
		}
		request.setAttribute("msg", message);
		getServletContext().getRequestDispatcher("/HomePage.jsp").forward(request, response);
	}
    
	protected void doPost1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		final Part filePart = request.getPart("inputFile");
	    final String fileName = getFileName(filePart);
	    final PrintWriter writer = response.getWriter();
	    String flag = "";
	    if(fileName.endsWith(".csv")) {
	    	OutputStream out = null;
		    InputStream filecontent = null;
		    final String path = "D:\\Project";

		    try {
		        out = new FileOutputStream(new File(path + File.separator + fileName));
		        filecontent = filePart.getInputStream();

		        int read = 0;
		        final byte[] bytes = new byte[1024];

		        while ((read = filecontent.read(bytes)) != -1) {
		            out.write(bytes, 0, read);
		        }
		        writer.println("New file " + fileName + " created at " + path);
		        flag="New file " + fileName + " created at " + path;
		        try {
			        String line = Files.lines(Paths.get(path + File.separator + fileName)).findFirst().get();
			        request.getSession().setAttribute("header", line);
			        System.out.println(line);
			    } catch (IOException e) {
			        // TODO Auto-generated catch block
			        e.printStackTrace();
			    }
		    } catch (FileNotFoundException fne) {
		        writer.println("You either did not specify a file to upload or are "
		                + "trying to upload a file to a protected or nonexistent "
		                + "location.");
		        writer.println("<br/> ERROR: " + fne.getMessage());
		        flag="You either did not specify a file to upload or are "
		                + "trying to upload a file to a protected or nonexistent "
		                + "location.";
		    } finally {
		        if (out != null) {
		            out.close();
		        }
		        if (filecontent != null) {
		            filecontent.close();
		        }
		    }
	    }
	    else
	    {
	    	flag = "Only CSV file allowed";
	    }

	    //response.sendRedirect("Accept.jsp");
	    request.setAttribute("msg", flag);
	    request.getRequestDispatcher("HomePage.jsp").forward(request,response);
	    if (writer != null) {
            writer.close();
        }
	    
	   /* System.out.println(Arrays.asList(request.getParameterValues("category")));
	    @SuppressWarnings("unused")
		String[] parameterValues = request.getParameterValues("category");
	    //request.setAttribute("msg", "test");
	    request.getRequestDispatcher("Accept.jsp").forward(request,response);*/
	}

	private String getFileName(final Part part) {
	    for (String content : part.getHeader("content-disposition").split(";")) {
	        if (content.trim().startsWith("filename")) {
	            return content.substring(
	                    content.indexOf('=') + 1).trim().replace("\"", "");
	        }
	    }
	    return null;
	}
}
