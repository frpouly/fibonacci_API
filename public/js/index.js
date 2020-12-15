window.addEventListener("load", function () {
    function sendData() {
        let XHR = new XMLHttpRequest();

        let FD = new FormData(form);

        XHR.addEventListener("error", function(event) {
            alert('Oups! Somethong went wrong.');
        });

        XHR.addEventListener("load", function(event) {
            if (XHR.status != 200) { // analyze HTTP status of the response
                alert(`Please provide a valid number`);
            } else {
                let json = JSON.parse(XHR.responseText);
                document.getElementById("result_fibonacci").innerHTML = json.value
            }
        });

        XHR.open("GET", "/api/v1/fibonacci/" + document.getElementById("number_fibonacci").value);
        XHR.send();
    }

    let form = document.getElementById("fibonacci");

    form.addEventListener("submit", function (event) {
        event.preventDefault();
        sendData();
    });
});

window.addEventListener("load", function () {
    function sendData() {
        let XHR = new XMLHttpRequest();

        let FD = new FormData(form);

        XHR.addEventListener("error", function(event) {
            alert('Oups! Somethong went wrong.');
        });

        XHR.addEventListener("load", function(event) {
            if (XHR.status != 200) { // analyze HTTP status of the response
                alert(`Please provide a valid number`);
            } else {
                let json = JSON.parse(XHR.responseText);
                document.getElementById("result_inverted_fibonacci").innerHTML = json.value
            }
        });

        XHR.open("GET", "/api/v1/inverted_fibonacci/" + document.getElementById("number_inverted_fibonacci").value);
        XHR.send();
    }

    let form = document.getElementById("inverted_fibonacci");

    form.addEventListener("submit", function (event) {
        event.preventDefault();
        sendData();
    });
});