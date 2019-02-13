var app= angular.module("adminApp",[])
app.controller("adminController", function($scope,$http,$location){
	
	 $scope.seekers=function(){
	$http.get('/AdminView/Seeker').then(function(response) {       
			$scope.details=response.data;
			
			});
	 }
});