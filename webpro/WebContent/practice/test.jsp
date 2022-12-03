<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<link rel="stylesheet" href="register_custom.css">
<body>
  
    
    <!-- my account start  -->
    <section class="main_content_area">
        <div class="container">   
            <div class="account_dashboard">
                <div class="row">
                    <div class="offset -md-3 col-md-6 offset-md-3">
                        <!-- Tab panes -->
                        <div class="tab-content dashboard_content">
                            <div class="tab-pane show active" id="account-details">
                                <h3>계정 생성</h3>
                                <div class="login">
                                    <div class="login_form_container">
                                        <div class="account_login_form">
                                            <form id="user_register_form" method="POST" action="register_user">
                                                <label>이름<span class="isMandatory">* </span></label>
                                                <input type="text" name="user_first_name">
                                                <br/>
                                                <label>성<span class="isMandatory">* </span></label>
                                                <input type="text" name="user_last_name">
                                                <br/>
                                                <label>이메일(Id)<span class="isMandatory">* </span></label>
                                                <input type="text" id="user_id" name="user_id">
                                                <br/>
                                                <label>비밀번호<span class="isMandatory">* </span></label>
                                                <input type="password" name="user_password">
                                                <br/>
                                                <label>비밀번호 확인<span class="isMandatory">* </span></label>
                                                <input type="password" name="user_password_check">
                                                <br/>
                                                <label>생년월일<span class="isMandatory">* </span></label>
                                                <input type="text" placeholder="YYYY/MM/DD" value="" name="user_birthdate">
                                                <br/>
                                                <span class="example">
                                                  (E.g.: 1970/05/31)
                                                </span>
                                                <br/>
                                                <br/>
                                                <label>전화번호<span class="isMandatory">* </span></label>
                                                <input type="text" placeholder="'-'는 생략" value="" name="user_phone">
                                                <br/>
                                                <label>회사 이름(옵션)</label>
                                                <input type="text" name="address_company_name">
                                                <label>거리 주소 <span class="isMandatory">* </span></label>
                                                <input type="text" name="address_street">
                                                <input type="text" name="address_street_optional">
                                                <br/>
                                                <label>시 / 도시<span class="isMandatory">* </span></label>
                                                <input type="text" name="address_city">
                                                <br/>
                                                <label>국가<span class="isMandatory">* </span></label>
                                                <input type="text" value="대한민국" readonly name="address_state">
                                                <br/>
                                                <span class="custom_checkbox">
                                                    <input type="checkbox" value="1" name="newsletter">
                                                    <label><br><em>뉴스레터 수신 동의</em></label>
                                                </span>
                                                 <div id="submit_button" class="btn btn-danger">
                                                   <button type="submit">Save</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>  
        </div>        	
    </section>			
    </body>
    </html>