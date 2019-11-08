public class SimpleApexCallout {
    public static void runCallout(){
        String requestEndpoint = Label.postman_endpoint;
        
        HttpRequest request = new HttpRequest();
        request.setEndpoint(requestEndpoint);
        request.setMethod('GET');
        
        Http http = new Http();
        HttpResponse response = http.send(request);
        system.debug('response body ->>>'+response.getBody());    
    }    
}