<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>boardList</title>
</head>
<body>
<div class="page-wrapper">
  <div class="container-fluid">
    <div class="col-lg-8">
      <!--게시판 넓이 -->
      <div class="col-lg-12">
        <h1 class="page-header">게시판 관리</h1>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <button type="button" class="btn btn-outline btn-primary pull-right">
          <i class="fa fa-edit fa-fw"></i> 게시글 작성
          </button>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label" for="textinput">게시판 분류</label>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading">게시글 </div>
        <div class="panel-body">
          <table class="table table-hover">
          <thead>
          <tr>
            <th>글 번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>조회수</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach items="${list}" var="boardVO">
          <tr>
            <td>${boardVO.nno}</td>
            <td>${boardVO.ntitle}</td>
            <td>${boardVO.nwriter}</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.nrdate}"/></td>
            <td>${boardVO.nviewcnt}</td>
          </tr>
          </c:forEach>
          </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
