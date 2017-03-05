<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="drag-and-drop">
  <head >
    <meta charset="utf-8" />
    <title>Drag and Drop: Multiple listsr</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0/angular.min.js"></script>
    <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/ui-lightness/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.1.1/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/estiloprodutos.css" rel="stylesheet" />
    <script src="js/angular-dragdrop.min.js"></script>
    <script src="js/app.js"></script>
    
  </head>
  <body ng-controller="oneCtrl">
    <div id="products">
      <h1 class="ui-widget-header">Products</h1>
      <div id="catalog">
        <h2><a href="#">T-Shirts</a></h2>
        <div>
          <ul>
            <li ng-repeat='item in list1' ng-show="item.title" data-drag="true" data-jqyoui-options="{revert: 'invalid', helper: 'clone'}" ng-model="list1" jqyoui-draggable="{index: {{$index}}, animate: true, placeholder: 'keep'}">{{item.title}}</li>
          </ul>
        </div>
        <h2><a href="#">Bags</a></h2>
        <div>
          <ul>
            <li ng-repeat='item in list2' ng-show="item.title" data-drag="true" data-jqyoui-options="{revert: 'invalid', helper: 'clone'}" ng-model="list2" jqyoui-draggable="{index: {{$index}}, placeholder: 'keep'}">{{item.title}}</li>
          </ul>
        </div>
        <h2><a href="#">Gadgets</a></h2>
        <div>
          <ul>
            <li ng-repeat='item in list3' ng-show="item.title" data-drag="true" data-jqyoui-options="{revert: 'invalid', helper: 'clone'}" ng-model="list3" jqyoui-draggable="{index: {{$index}}, placeholder: 'keep'}">{{item.title}}</li>
          </ul>
        </div>
      </div>
    </div> 
    <div id="cart">
        <h1 class="ui-widget-header">Shopping Cart</h1>
        <div class="ui-widget-content">
            <ol data-drop="true" ng-model='list4' jqyoui-droppable="{multiple:true}">
                <li ng-repeat="item in list4 track by $index" ng-show="item.title" data-drag="true" data-jqyoui-options="{revert: 'invalid', helper: 'clone'}" ng-model="list4" jqyoui-draggable="{index: {{$index}},animate:true}">{{item.title}}</li>
                <li class="placeholder" ng-hide="hideMe()">Add your items here</li>
            </ol>
        </div>
    </div>
  </body>
</html >