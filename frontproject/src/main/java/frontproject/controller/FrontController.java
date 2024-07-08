package frontproject.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * frontcontroller는 모든 가상경로를 가장 먼저 받아 
 * 역할에 맞는 컨트롤러로 요청을 분기하는 처리를 한다.
 * */

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FrontController() {
        super();
       
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURL = request.getRequestURI(); //전체 url(도메인 제외)
		//url:도메인 포함한 경로
		//uri:도메인 포함하지 않은 뒷부분 경로
		//프로젝트 path 필요없음 뺄거야
		String contextPath = request.getContextPath(); //프로젝트 path
		
		String command = requestURL.substring(contextPath.length()+1); //프로젝트 path를 제외한 uri
		//프로젝트 slash 뒷 부분부터의 주소만 command에 받아와
		
		String[] uris = command.split("/");
		if(uris[0].equals("sampleTB")) {
			
			SampleTBController sampleTBController = new SampleTBController();
			
			sampleTBController.getAction(request, response, uris);
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURL = request.getRequestURI(); //전체 url(도메인 제외)
		//url:도메인 포함한 경로
		//uri:도메인 포함하지 않은 뒷부분 경로
		//프로젝트 path 필요없음 뺄거야
		String contextPath = request.getContextPath(); //프로젝트 path
		
		String command = requestURL.substring(contextPath.length()+1); //프로젝트 path를 제외한 uri
		//프로젝트 slash 뒷 부분부터의 주소만 command에 받아와
		
		String[] uris = command.split("/");
		if(uris[0].equals("sampleTB")) {
			
			SampleTBController sampleTBController = new SampleTBController();
			
			sampleTBController.postAction(request, response, uris);
		}

	}

}
