<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
    .outer {
        border: gray solid 1px;
        border-radius: 7px;
        width: 1200px;
        height: 800px;
        margin: auto;
        background-color: rgb(248, 248, 248);
        padding:10px;
    }

    #member-list {
        text-align: center;
        border: 1px solid gray;
        width: 100%;
        background-color: white;
        font-size: 13px;
    }

    #search {
        float: left;
    }

    #buttons {
        float: right;
    }

    #buttons>button, #search>button { font-size: 14px;}

    #member-list button {
        width: 90px !important;
        height:30px !important; 
        font-size: 12px !important; 
        line-height: 10px !important;
        }

    #paging-area>button {
        width:30px;
        height:30px;
        font-size: 12px;
        text-align: center;
        
    }

    #member-list p{margin: 0;}



</style>










</head>





<body>

<%@ include file="adminMenubar.jsp" %>

<div class="outer" align="center">
    <div class="top" id="search" align="left">
        <input type="search" id="member-search-box" class="form-control-sm" placeholder="고객ID" style="font-size: 14px;">
        <!--  <button type="button" class="btn btn-primary btn-sm">조회</button> -->
    </div>
    <div class="top" id="buttons" align="right">
        <button class="btn btn-dark btn-sm">차단</button>
        <!-- <button class="btn btn-success btn-sm">저장</button> -->
        <button class="btn btn-warning btn-sm">삭제</button>
    </div>

    <br><br>
    <table class="table" id="member-list">
        <thead>
            <tr class="table-info">
                <th width="60px">선택</th>
                <th width="80px">고객번호</th>
                <th width="80px">ID</th>
                <th width="80px">고객명</th>
                <th width="130px">전화번호</th>
                <th width="150px">이메일</th>
                <th width="150px">주소</th>
                <th width="120px">반려견정보</th>
                <th width="100px">블랙리스트</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="001">001</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieun1010a">jieun1010a</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="이지은">이지은</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="010-1111-2222">010-1111-2222</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieum11@maver.com">jieum11@maver.com
                    </p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="경기도 수원시 영통구">경기도 수원시 영통구</p>
                </td>
                <td align="center"><button class="btn btn-primary">상세조회</button></td>
                <td>Y</td>
            </tr>

            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="002">002</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieun1010b">jieun1010b</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="이지은">이지은</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="010-1111-2222">010-1111-2222</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieum11@maver.com">jieum11@maver.com
                    </p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="경기도 수원시 영통구">경기도 수원시 영통구</p>
                </td>
                <td align="center"><button class="btn btn-primary">상세조회</button></td>
                <td>Y</td>
            </tr>

            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td>
                    <p>003</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieun1010c">jieun1010c</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="이지은">이지은</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="010-1111-2222">010-1111-2222</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieum11@maver.com">jieum11@maver.com
                    </p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="경기도 수원시 영통구">경기도 수원시 영통구</p>
                </td>
                <td align="center"><button class="btn btn-primary">상세조회</button></td>
                <td>Y</td>
            </tr>

            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td>
                    <p>004</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieun1010">jieun1010</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="이지은">이지은</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="010-1111-2222">010-1111-2222</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieum11@maver.com">jieum11@maver.com
                    </p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="경기도 수원시 영통구">경기도 수원시 영통구</p>
                </td>
                <td align="center"><button class="btn btn-primary">상세조회</button></td>
                <td>Y</td>
            </tr>

            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td>
                    <p>005</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieun1010">jieun1010</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="이지은">이지은</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="010-1111-2222">010-1111-2222</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieum11@maver.com">jieum11@maver.com
                    </p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="경기도 수원시 영통구">경기도 수원시 영통구</p>
                </td>
                <td align="center"><button class="btn btn-primary">상세조회</button></td>
                <td>Y</td>
            </tr>

            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td>
                    <p>006</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieun1010">jieun1010</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="이지은">이지은</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="010-1111-2222">010-1111-2222</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieum11@maver.com">jieum11@maver.com
                    </p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="경기도 수원시 영통구">경기도 수원시 영통구</p>
                </td>
                <td align="center"><button class="btn btn-primary">상세조회</button></td>
                <td>Y</td>
            </tr>

            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td>
                    <p>007</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieun1010">jieun1010</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="이지은">이지은</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="010-1111-2222">010-1111-2222</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieum11@maver.com">jieum11@maver.com
                    </p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="경기도 수원시 영통구">경기도 수원시 영통구</p>
                </td>
                <td align="center"><button class="btn btn-primary">상세조회</button></td>
                <td>Y</td>
            </tr>

            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td>
                    <p>008</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieun1010">jieun1010</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="이지은">이지은</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="010-1111-2222">010-1111-2222</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieum11@maver.com">jieum11@maver.com
                    </p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="경기도 수원시 영통구">경기도 수원시 영통구</p>
                </td>
                <td align="center"><button class="btn btn-primary">상세조회</button></td>
                <td>Y</td>
            </tr>

            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td>
                    <p>009</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieun1010">jieun1010</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="이지은">이지은</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="010-1111-2222">010-1111-2222</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieum11@maver.com">jieum11@maver.com
                    </p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="경기도 수원시 영통구">경기도 수원시 영통구</p>
                </td>
                <td align="center"><button class="btn btn-primary">상세조회</button></td>
                <td>Y</td>
            </tr>

            <tr>
                <td>
                    <input type="checkbox">
                </td>
                <td>
                    <p>010</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieun1010">jieun1010</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="이지은">이지은</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="010-1111-2222">010-1111-2222</p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="jieum11@maver.com">jieum11@maver.com
                    </p>
                </td>
                <td>
                    <p class="rowColumn" contenteditable="false" data-default="경기도 수원시 영통구">경기도 수원시 영통구</p>
                </td>
                <td align="center"><button class="btn btn-primary">상세조회</button></td>
                <td>Y</td>
            </tr>
        </tbody>
    </table>

    <!-- 페이징바 -->
                    
    <div id="paging-area">
        <button class="btn btn-outline-primary btn-sm">&lt;</button>
        <button class="btn btn-outline-primary btn-sm">1</button>
        <button class="btn btn-outline-primary btn-sm">2</button>
        <button class="btn btn-outline-primary btn-sm">3</button>
        <button class="btn btn-outline-primary btn-sm">4</button>
        <button class="btn btn-outline-primary btn-sm">5</button>
        <button class="btn btn-outline-primary btn-sm">&gt;</button>
    </div>
</div>

<br><br><br><br><br>


<script type="text/javascript">



    // @breif contenteditable 속성을 가진경우

    contents = document.getElementsByClassName("rowColumn");

    document.addEventListener("DOMContentLoaded", function () {


        // @breif rowColumn 클래스의 갯수 만큼 반복문을 실행한다.
        Array.from(contents).forEach(function (content) {

            // @breif 마우스로 해당영역을 더블클릭 한경우
            content.addEventListener("dblclick", function (event) {



                // @breif 전체 테이블 컬럼( td > p )에서 현재 사용중인 값의 존재여부를 확인한다.
                Array.from(contents).forEach(function (defaultVal) {

                    /*
                    // @details 빈값( null )이 존재하는지 체크한다.
                    if(
                           defaultVal.textContent == ""
                        || defaultVal.textContent == null
                        || defaultVal.textContent == undefined
                        || (defaultVal.textContent != null
                        && typeof defaultVal.textContent == "object"
                        && !Object.keys(defaultVal.textContent).length == ""))
                    {

                        // @details 내용이 존재하지 않다면 data 태그의 기본값으로 되돌린다.
                        defaultVal.textContent = defaultVal.dataset.default;
                    }
                    */

                    // @details 저장하지 않은 내용이라고 판단하여 data 태그의 기본값으로 되돌린다.
                    defaultVal.textContent = defaultVal.dataset.default;

                    // @breif 수정 불가 상태로 되돌린다.

                    defaultVal.contentEditable = false;

                    defaultVal.style.border = "0px";

                });



                if (content.isContentEditable == false) {



                    // @details 편집 가능 상태로 변경
                    content.contentEditable = true;



                    // @details 텍스트 문구 변경
                    // content.textContent = "";



                    // @details CSS 효과 추가

                    content.style.border = "1px solid #FFB6C1";



                    // @details 포커스 지정
                    content.focus();

                }

            });



            // @breif 키보드 입력이 방생한 경우 실행
            content.addEventListener("keypress", function (event) {


                // @breif Enter키 입력시 실행
                if (event.keyCode == "13") {

                    if (confirm("저장하시겠습니까?")) {


                        // @details 입력된 값이 빈값( null )인지 체크한다.
                        if (

                            content.textContent == ""
                            || content.textContent == null
                            || content.textContent == undefined
                            || (content.textContent != null

                                && typeof content.textContent == "object"
                                && !Object.keys(content.textContent).length == "")) {


                            // @details 내용이 존재하지 않다면 data 태그의 기본값으로 되돌린다.
                            content.textContent = content.dataset.default;

                        } else {



                            // @details 내용의 수정이 완료되었다면 data 태그의 기본값도 바꿔준다.
                            content.dataset.default = content.textContent;

                        }

                        // @breif 수정 불가 상태로 되돌린다.
                        content.contentEditable = false;

                        content.style.border = "0px";

                        var memNo = $(this).parent().siblings().eq(1).children().text();
                        var updateValue = content.dataset.default;
                        var updateCol = "";

                        switch ($(this).parent().index()) {
                            case 2: updateCol = "userId"; break;
                            case 3: updateCol = "userName"; break;
                            case 4: updateCol = "phone"; break;
                            case 5: updateCol = "email"; break;
                            case 6: updateCol = "address"; break;
                        }


                        console.log(memNo);         // 변경이 발생한 고객의 고객번호
                        console.log(updateValue);   // 변경된 값
                        console.log(updateCol);     // 변경이 발생한 컬럼

                        //location.href = "update.me?mno="+memNo+"&"+updateCol+"="+updateValue;
                        // 이렇게 서블릿 호출해서 값 넘기면 되지 않을까?
                        // 화면 우측 상단 저장 버튼은 없애야 함. (-- 없앴음)
                        // 근데 엔터키 두개 중에서 하나만 먹힘. 왜그럴까,,,?





                    } else {
                        content.textContent = content.dataset.default;
                        content.contentEditable = false;
                        content.style.border = "0px";

                    }

                }

            });

        });

    });

    // 아이디로 검색  // 조회버튼 필요없음

    $(document).ready(function () {
        $("#member-search-box").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#member-list>tbody>tr").filter(function () {
                $(this).toggle($(this).children().eq(2).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>


</body>
</html>