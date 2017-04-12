<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body>

<div ng-app="myApp" ng-controller="customersCtrl"> 

<ul>
  <li ng-repeat="x in myData">
    {{ x.id + ', ' + x.name }}
  </li>
</ul>
		{{myData}}
</div>

<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
  $http.get('PostFormData').then(function (response) {
      $scope.myData = response.data;
  });
});
</script>

</body>
</html>
