//https://www.hhs.gov/ - Color Palette
//http://stackoverflow.com/questions/22066204/coldfusion-issue-using-onerror
//https://solutions.hostmysite.com/index.php?/Knowledgebase/Article/View/8426/283/cfscript-applicationcfc-template
//http://www1.looksmart.com/search.php?q=coldfusion%20application%20cfc&look=L48&dev=c&gclid=CLDxt_i_kNMCFcKEswodPQoINg
component{
	
			//this.name = "the Portal";
    	    this.applicationTimeout = CreateTimeSpan(0, 0, 20, 0); // days, hours, minutes, seconds
		    this.sessionTimeout     = CreateTimeSpan(0, 0, 20, 0); 
		    //this.dsn = "prtl";
		    this.sessionManagement = true;
		    this.clientManagement = true;
			this.loginStorage="session"; 
		    this.scriptProtect = false;
			this.setdomainCookies = true;
			this.secureJson = false;
 			
 			//session.showDebug = true;		
		   	public boolean function onApplicationStart() { 
		 		return true; 
		 	} 
		 	//
		 	public void function onApplicationEnd(struct applicationScope={}) { 
		 		return; 
		 	} 
		 	//		
		 	public void function onSessionStart() { 
		 		return; 
		 	} 
		 	//
		 	public void function onSessionEnd(required struct sessionScope, struct applicationScope={}) { 
		 		return; 
		 	} 
 			//
		    
		    // the target page is passed in for reference, but you are not required to include it
		 	public boolean function onRequestStart(required string targetPage) { 
		 		return true; 
		 	}
		 	//
		 	public void function onRequest(required string targetPage) { 
		 		setupApplication();
		 		include arguments.targetPage; 
		 		return; 
		 	} 
			//
		 	public void function onCFCRequest(string cfcname, string method, struct args) { 
		 		return; 
		 	} 
			//		
		 	public void function onRequestEnd() { 
		 		return; 
		 	} 
		 	//
		 	public void function onAbort(required string targetPage) { 
		 		return; 
		 	} 		
		    //
//		 	public void function onError(required any exception, required string eventName) { 
//		 		include "custom_error.cfm";
//		 		return; 
//		 	} 		
		    //function onError( any Exception, string EventName ) { include "custom_error.cfm"; }
		    //
		 	public boolean function onMissingTemplate(required string targetPage) { 
		 		return true; 
		 	} 
		    
    		    
	function setupApplication()
	{
		application.name = "EXORDIUM"; //"BASE";
		application.dsn = "aframe";
		
		// CGI.SERVER_PROTOCOL = "HTTP/1.1"
		var vPos = CGI.SERVER_PROTOCOL.indexOf('/');						// vPos = 4;
		application.urlstart = LCase(CGI.SERVER_PROTOCOL.substring(0, vPos)&"://"); // application.urlstart = "HTTP://""
		application.httphost = CGI.HTTP_HOST;								 //application.httphost = "127.0.0.1:8600"
		
																			//CGI.SCRIPT_NAME = "/thePortal/index.cfm "				
		var vPathRoot = CGI.SCRIPT_NAME.substring(1);						// vPathRoot = "thePortal/index.cfm"
			vPos = vPathRoot.indexOf("/");
		application.path.root = vPathRoot.substring(0,vPos);				// application.path.root = "thePortal"

		application.path.cfc = "/" & application.path.root & "/cfc/";
		application.path.css = "/" & application.path.root & "/css/";
		application.path.db  = "/" & application.path.root & "/db/";
		application.path.doc = "/" & application.path.root & "/doc/";
		application.path.img = "/" & application.path.root & "/img/";
		application.path.res = "/" & application.path.root & "/res/";
				application.path.jq = application.path.res & "jQuery/";
					application.path.jq_ui_base = application.path.jq & "jquery-ui-1.12.1.base/";
					application.path.jq_external = application.path.jq_ui_base & "external/jquery/";
				application.path.js = application.path.res & "js/";
		application.path.ui = "/" & application.path.root & "/ui/";
				application.path.home = application.path.ui & "home/";
				application.path.modules = application.path.ui & "modules/";

// Application dot notation
		application.dot.root = application.path.root;
		application.dot.cfc  = application.dot.root & ".cfc.";
		application.dot.objcfc = CreateObject(application.dot.cfc & "cfc");

	}
}
		
		