
function localizarUsuario(){
  if (window.navigator && window.navigator.geolocation) {
   var geolocation = window.navigator.geolocation;
   geolocation.getCurrentPosition(sucesso, erro);
  } else {
     alert('Geolocalização não suportada em seu navegador.')
  }
  function sucesso(posicao){
    console.log(posicao);
    var latitude = posicao.coords.latitude;
    var longitude = posicao.coords.longitude;
    alert('Sua latitude estimada é: ' + latitude + ' e longitude: ' + longitude )
    
    var pyrmont = {
		lat : parseFloat(latitude),
		lng : parseFloat(longitude)
	};
    
	map = new google.maps.Map(document.getElementById('map'), {
		center : pyrmont,
		zoom : 17
	});

    geocoder = new google.maps.Geocoder();
    
    marker = new google.maps.Marker({
  		map: map,
  		draggable: true,
  	});
  		
  	
  	marker.setPosition(pyrmont);
  	
    

    
	var service = new google.maps.places.PlacesService(map);
	service.nearbySearch({
		location : pyrmont,
		radius : 500,
		types : [ 'grocery_or_supermarket' ]
	}, processResults);
}

function processResults(results, status, pagination) {
	if (status !== google.maps.places.PlacesServiceStatus.OK) {
		return;
	} else {
		createMarkers(results);

		if (pagination.hasNextPage) {
			var moreButton = document.getElementById('more');

			moreButton.disabled = false;

			moreButton.addEventListener('click', function() {
				moreButton.disabled = false;
				pagination.nextPage();
			});
		}
	}
}

function createMarkers(places) {
	var bounds = new google.maps.LatLngBounds();
	var placesList = document.getElementById('places');
	
	for (var i = 0, place; place = places[i]; i++) {
		var image = {
			url : place.icon,
			size : new google.maps.Size(71, 71),
			origin : new google.maps.Point(0, 0),
			anchor : new google.maps.Point(17, 34),
			scaledSize : new google.maps.Size(25, 25)
		};
		
		var marker = new google.maps.Marker({
			map : map,
			icon : image,
			title : place.name,
			position : place.geometry.location
			
		
		});
		
		placesList.innerHTML += '<li>' + place.name + '</li>' ;
		
		bounds.extend(place.geometry.location);
	}
	map.fitBounds(bounds);
	
  }
  function erro(error){
    console.log(error)
  }
}