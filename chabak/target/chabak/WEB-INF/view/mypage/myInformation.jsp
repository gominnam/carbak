<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
<%--    session--%>
    <style>
        button{
            float:left;
        }
    </style>
</head>

<body>
<form onload="test();">
    <input type="hidden" id="hi" name="hi" value="kk">
</form>
mypage
<hr>
<c:forEach var="getFollowerId" items="${HashMapList}" varStatus="status">
    ${items.FOLLOWERID}
    ${items.FOLLOWINGID}

</c:forEach>

<!-- 클릭 시 프로필 수정 페이지 이동-->
<button onclick="location='/member/'">프로필 수정</button>

<!--게시글 수 보이게, 클릭시 자기가 작성한 리뷰글 조회-->
<button onclick="#">게시글</button>
<span>555</span>

<!--팔로워 수 보이게, 클릭시 팔로워 리뷰글 조회-->
<button id="follower">
    팔로워
    <input type="hidden">
</button>
<!--숫자 클릭시 팔로워한 id 조회 리스트(팔로워 수 1000단위 k표현 100000단위 m표현-->
<a href="#" onclick="#">4k</a>

<!--팔로잉 수 보이게, 클릭시 팔로잉 리뷰글 조회-->
<button onclick="#">팔로잉</button>
<!--숫자 클릭시 팔로잉한 id 조회 리스트(팔로워 수 1000단위 k표현 1000000단위 m표현-->
<a href="#" onclick="#">11</a>
<hr>

<!-- 위에 버튼 클릭 시, 화면단에서 비동기 처리(ajax 활용) todo:input hidden -->
<ul id="result" class="mypage_board">
    <li class="active"> </li> <!-- 버튼 클릭시 결과가 나오는 라인 -->
</ul>

<p><c:out value="${getFollowerId}" escapeXml="false"/></p>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/js/myInfo.js" charset="UTF-8"></script>
</body>
</html>
