<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, 
                                   minimum-scale=1.0, user-scalable=no">
    <title>쿨리닉 공지</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');

:root {
  --button-color: #ffffff;
  --button-bg-color: #0d6efd;
  --button-hover-bg-color: #025ce2;
}
        *{padding: 0; margin: 0;}
 
        #pop_container{
            font-family: 'NotoSans','맑은 고딕', 'Malgun Gothic',"돋움", dotum, arial, sans-serif;
            text-align: center;
            position: relative;
        }
                h1.infoTit {
                    color:#ffffff;
                }
            main.textBox{
                text-align: center;
            }
                h2.tit{
                    font-size: 1.6em;
                    letter-spacing: -2px;
                    font-weight: bold;
                    line-height: 1.5em;
                }
                p {
                    line-height: 1.8em;
                }
                p.textContents{
                    font-size: 1.1em;
                    font-weight: 200;
                }
 
            footer {    
                position: absolute;
                bottom: 0;
                width: 100%;
                background-color: #dddddd;
            }
            footer.btnBox_todayClose {
                padding: 0.5rem 0 0.7rem;
                display: flex;
                justify-content: flex-end;
            }
                form {padding-right: 2rem;}
                input#chkday {
                    width: 17px;
                    height: 17px; 
                    vertical-align: middle;
                }
                label {vertical-align: middle;}
             .find-btn{
				text-align: center;
			}
			.find-btn1{
				display :inline-block;
			}
			
		button {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  
  background: var(--button-bg-color);
  color: var(--button-color);
  
  margin: 0;
  padding: 0.5rem 1rem;
  
  font-family: 'Noto Sans KR', sans-serif;
  font-size: 1rem;
  font-weight: 400;
  text-align: center;
  text-decoration: none;
  
  border: none;
  border-radius: 4px;
  
  display: inline-block;
  width: auto;
  
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
  
  cursor: pointer;
  
  transition: 0.5s;
}

button.success {
  --button-bg-color: #28a745;
  --button-hover-bg-color: #218838;
}

button.error {
  --button-bg-color: #dc3545;
  --button-hover-bg-color: #c82333;
}

button.warning {
  --button-color: #212529;
  --button-bg-color: #ffc107;
  --button-hover-bg-color: #e0a800;
}

button:active,
button:hover,
button:focus {
  background: var(--button-hover-bg-color);
  outline: 0;
}
button:disabled {
  opacity: 0.5;
}
    </style>
</head>
<body>
    <div id="popup">
        <main class="textBox">
            <p class="textContents">
                <img src="/assets/img/meetup.jpg" style="width:100%;height: 100%;">
                <div class="find-btn">
				    <button type="button" class="find-btn1" onclick="window.open('https://coolinic.oopy.io/meetup')">자세히보기</button>
				    <button type="button" class="find-btn1" onclick="window.open('https://docs.google.com/forms/d/e/1FAIpQLSeV1XrJtIgNMCy11BXRgMdHvNw--FCdH1KKUjDKnB2IKgotDA/viewform')">신청하기</button>
				</div>
            </p>
        </main>
        
    </div>   
    <footer class="btnBox_todayClose">
        <form method="post" action="" name="pop_form">
            <span id="check"><input type="checkbox" value="checkbox" name="chkbox" id="chkday"/>
                <label for="chkday">오늘 하루동안 보지 않기</label>
            </span>
        </form>
    </footer>
 
</body>
</html>
