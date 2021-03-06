<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <title>위치</title>
        
    </head>
    <body>
    <div id="map" style="width:300px;height:300px;"></div>
    
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=24041778a2f826e90efb57a4417ba69d&libraries=services"></script>
    <script>
 


    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center: new kakao.maps.LatLng(37.3926553, 126.9484161), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };  
    
    // 지도를 생성합니다    
    var map = new kakao.maps.Map(mapContainer, mapOption); 
    
    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();
    
    // 주소로 좌표를 검색합니다
    geocoder.addressSearch('<%=sitterInfo.getAddress()%>', function(result, status) {
    
        // 정상적으로 검색이 완료됐으면 
         if (status === kakao.maps.services.Status.OK) {
    
            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
    
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });
    
            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:220px;text-align:center;padding:6px 0;font-size:10pt;"><%=sitterInfo.getAddress()%></div>'
            });
            infowindow.open(map, marker);
            map.setCenter(coords);
        } 
        
    });    



    function relayout() {    
    map.relayout();
}
    
    </script>
    </body>
    </html>