var comments = {
  transclude: true,
  templateUrl: 'comments/comments.html',
  controller: NewCommentController
};

function NewCommentController($stateParams, $state, CommentsService) {

  var ctrl = this;
  ctrl.postComment = postComment;

  function postComment() {
    return CommentsService.newComment($stateParams, ctrl.comment);
  };

};

NewCommentController.$inject = ['$stateParams', '$state', 'CommentsService'];

angular
  .module('uponnyc')
  .component('comments', comments)
