function submitCheck() {
                var count = $('#store > option:selected').val();
                        var temperture = $('#temperture > option:selected').val();
                        var mtype = $('#mtype > option:selected').val();
                        var msize = $('#msize > option:selected').val();
                        var purchese = $('#purchese > option:selected').val();
                        var inputValueVert = $('#vert').val();
                        var inputValueHeg = $('#heg').val();
                        var inputValueWid = $('#wid').val();

                        if(count==0){
                                $("#store").focus();
                                return false;
                        }

                        if(temperture==0){
                                $("#temperture").focus();
                                return false;
                        }

                        if(mtype==0){
                                $("#mtype").focus();
                                return false;
                        }

                        if(msize==0){
                                $("#msize").focus();
                                return false;
                        }

                        if(purchese==0){
                                $("#purchese").focus();
                                return false;
                        }else{
                                $('#loading').show();
                        }
            return true;
        }
 function inputValueVertChange(){
                var inputValueVert = document.getElementById('vert').value;
                var inputValueVerts = document.getElementById('vert');
                const birthErrorMsgElVert =
                  document.querySelector('.item .error-msg2');

                if(inputValueVert < 800){
                        inputValueVerts.value = null;
                        birthErrorMsgElVert.textContent = "최소 800 이상의 값을 입력하세요. 다시 확인해주세요."
                                document.getElementById('vert').focus();
                }else {
                        birthErrorMsgElVert.textContent = "";
                }
        }

        function inputValueHegChange(){
                var inputValueHeg = document.getElementById('heg').value;
                var inputValueHegs = document.getElementById('heg');
                const birthErrorMsgElHeg =
                  document.querySelector('.item .error-msg3');

                if(inputValueHeg < 800){
                        inputValueHegs.value = null;
                        birthErrorMsgElHeg.textContent = "최소 800 이상의 값을 입력하세요. 다시 확인해주세요."
                                document.getElementById('heg').focus();
                }else {
                        birthErrorMsgElHeg.textContent = "";
                }
        }

        function inputValueWidChange(){
                var inputValueWid = document.getElementById('wid').value;
                var inputValueWids = document.getElementById('wid');
                const birthErrorMsgElWid =
                  document.querySelector('.item .error-msg1');

                if(inputValueWid < 800){
                        inputValueWids.value = null;
                        birthErrorMsgElWid.textContent = "최소 800 이상의 값을 입력하세요. 다시 확인해주세요."
                                document.getElementById('wid').focus();
                }else{
                        birthErrorMsgElWid.textContent = "";
                }
        }

        function onload(){
                const birthErrorMsgElSize =
                  document.querySelector('.item .alert-msg');
                birthErrorMsgElSize.innerText = "가로 x 세로 x 도어 두께 (도어 타입)";
        }

        function openPop() {
            document.getElementById("popup_layer").style.display = "block";

        }
function closePop() {
            document.getElementById("popup_layer").style.display = "none";
        }

