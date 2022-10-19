// Demo controller
angular.module('trixDemo', ['angularTrix', 'ui.bootstrap']).controller('trixDemoCtrl', function($scope, $timeout, $uibModal) {
  $scope.open = function() {
    var modalInstance = $uibModal.open({
      animation: true,
      ariaLabelledBy: 'modal-title',
      ariaDescribedBy: 'modal-body',
      templateUrl: 'myModalContent.html',
      controller: 'ModalInstanceCtrl',
      size: 'lg'
    });

    modalInstance.result.then(function(r) {
      // $scope.selected = selectedItem;
      console.log(r);
    }, function() {
      // modal dismissed
    });
  };

})
.controller('ModalInstanceCtrl', function ($scope, $uibModalInstance) {
  $scope.trix = '<div>Init small length html text</div>';
  $scope.ok = function () {
    $uibModalInstance.close($scope.trix);
  };

  $scope.cancel = function () {
    $uibModalInstance.dismiss('cancel');
  };
});